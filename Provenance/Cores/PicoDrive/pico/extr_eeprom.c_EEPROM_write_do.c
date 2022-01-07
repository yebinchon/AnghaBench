
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int eeprom_status; unsigned int eeprom_addr; unsigned int eeprom_cycle; unsigned int eeprom_slave; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int eeprom_type; unsigned char* data; int changed; } ;


 int EL_EEPROM ;
 TYPE_3__ Pico ;
 TYPE_2__ SRam ;
 scalar_t__ SekCyclesDone () ;
 int elprintf (int ,char*,...) ;
 scalar_t__ last_write ;

__attribute__((used)) static void EEPROM_write_do(unsigned int d)
{
  unsigned int sreg = Pico.m.eeprom_status, saddr = Pico.m.eeprom_addr;
  unsigned int scyc = Pico.m.eeprom_cycle, ssa = Pico.m.eeprom_slave;

  elprintf(EL_EEPROM, "eeprom: scl/sda: %i/%i -> %i/%i, newtime=%i", (sreg&2)>>1, sreg&1,
    (d&2)>>1, d&1, SekCyclesDone() - last_write);
  saddr &= 0x1fff;

  if(sreg & d & 2) {

    if((sreg & 1) && !(d&1)) {

      elprintf(EL_EEPROM, "eeprom: -start-");

      scyc = 0;
      sreg |= 8;
    } else if(!(sreg & 1) && (d&1)) {

      elprintf(EL_EEPROM, "eeprom: -stop-");
      sreg &= ~8;
    }
  }
  else if((sreg & 8) && !(sreg & 2) && (d&2))
  {

    scyc++;
    if(SRam.eeprom_type) {

      if((ssa&1) && scyc == 18) {
        scyc = 9;
        saddr++;
                                                      saddr&=0x1fff;
      }
      else if(SRam.eeprom_type == 2 && scyc == 27) scyc = 18;
      else if(scyc == 36) scyc = 27;
    } else {

      if(scyc == 18) {
        scyc = 9;
        if(saddr&1) { saddr+=2; saddr&=0xff; }
      }
    }
    elprintf(EL_EEPROM, "eeprom: scyc: %i", scyc);
  }
  else if((sreg & 8) && (sreg & 2) && !(d&2))
  {

    if(SRam.eeprom_type) {

      if(scyc == 9 || scyc == 18 || scyc == 27);
      else if( (SRam.eeprom_type == 3 && scyc > 27) || (SRam.eeprom_type == 2 && scyc > 18) ) {
        if(!(ssa&1)) {

          unsigned char *pm=SRam.data+saddr;
          *pm <<= 1; *pm |= d&1;
          if(scyc == 26 || scyc == 35) {
            saddr=(saddr&~0xf)|((saddr+1)&0xf);
            elprintf(EL_EEPROM, "eeprom: write done, addr inc to: %x, last byte=%02x", saddr, *pm);
          }
          SRam.changed = 1;
        }
      } else if(scyc > 9) {
        if(!(ssa&1)) {

          saddr<<=1;
          if(SRam.eeprom_type == 2) saddr&=0xff; else saddr&=0x1fff;
          saddr|=d&1;
          if(scyc==17||scyc==26) {
            elprintf(EL_EEPROM, "eeprom: addr reg done: %x", saddr);
            if(scyc==17&&SRam.eeprom_type==2) { saddr&=0xff; saddr|=(ssa<<7)&0x700; }
          }
        }
      } else {

        ssa<<=1; ssa|=d&1;
        if(scyc==8) elprintf(EL_EEPROM, "eeprom: slave done: %x", ssa);
      }
    } else {

      if(scyc == 9);
      else if(scyc > 9) {
        if(!(saddr&1)) {

          unsigned char *pm=SRam.data+(saddr>>1);
          *pm <<= 1; *pm |= d&1;
          if(scyc == 17) {
            saddr=(saddr&0xf9)|((saddr+2)&6);
            elprintf(EL_EEPROM, "eeprom: write done, addr inc to: %x, last byte=%02x", saddr>>1, *pm);
          }
          SRam.changed = 1;
        }
      } else {

        saddr<<=1; saddr|=d&1; saddr&=0xff;
        if(scyc==8) elprintf(EL_EEPROM, "eeprom: addr done: %x", saddr>>1);
      }
    }
  }

  sreg &= ~3; sreg |= d&3;
  Pico.m.eeprom_status = (unsigned char) sreg;
  Pico.m.eeprom_cycle = (unsigned char) scyc;
  Pico.m.eeprom_slave = (unsigned char) ssa;
  Pico.m.eeprom_addr = (unsigned short)saddr;
}
