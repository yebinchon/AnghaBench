
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* carthw; } ;
struct TYPE_4__ {TYPE_1__ ms; int rom; } ;
typedef int FPTR ;


 int CZ80 ;
 int Cz80_Set_Fetch (int *,int,int,int ) ;
 int EL_ANOMALY ;
 int EL_STATUS ;
 int EL_Z80BNK ;
 TYPE_2__ Pico ;
 unsigned char bank_mask ;
 int elprintf (int,char*,unsigned char,...) ;
 int z80_map_set (int ,int,int,int ,int ) ;
 int z80_pc () ;
 int z80_read_map ;

__attribute__((used)) static void write_bank(unsigned short a, unsigned char d)
{
  elprintf(EL_Z80BNK, "bank %04x %02x @ %04x", a, d, z80_pc());
  switch (a & 0x0f)
  {
    case 0x0c:
      elprintf(EL_STATUS|EL_ANOMALY, "%02x written to control reg!", d);
      break;
    case 0x0d:
      if (d != 0)
        elprintf(EL_STATUS|EL_ANOMALY, "bank0 changed to %d!", d);
      break;
    case 0x0e:
      d &= bank_mask;
      z80_map_set(z80_read_map, 0x4000, 0x7fff, Pico.rom + (d << 14), 0);



      break;
    case 0x0f:
      d &= bank_mask;
      z80_map_set(z80_read_map, 0x8000, 0xbfff, Pico.rom + (d << 14), 0);



      break;
  }
  Pico.ms.carthw[a & 0x0f] = d;
}
