
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eeprom_status; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int EEPROM_upd_pending (unsigned int) ;
 int EEPROM_write_do (int) ;
 int EL_EEPROM ;
 TYPE_2__ Pico ;
 int SekCyclesDone () ;
 int elprintf (int ,char*,int) ;
 int last_write ;

void EEPROM_write16(unsigned int d)
{

  if (SekCyclesDone() - last_write < 16) {

    elprintf(EL_EEPROM, "eeprom: skip because cycles=%i",
        SekCyclesDone() - last_write);
    EEPROM_upd_pending(d);
  } else {
    int srs = Pico.m.eeprom_status;
    EEPROM_write_do(srs >> 6);
    EEPROM_upd_pending(d);
    if ((srs ^ Pico.m.eeprom_status) & 0xc0)
      last_write = SekCyclesDone();
  }
}
