
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zram; scalar_t__ rom; } ;
struct TYPE_3__ {int z80_out; int z80_in; } ;
typedef int FPTR ;


 int CZ80 ;
 int Cz80_Set_Fetch (int *,int,int,int ) ;
 int Cz80_Set_INPort (int *,int ) ;
 int Cz80_Set_OUTPort (int *,int ) ;
 TYPE_2__ Pico ;
 TYPE_1__ drZ80 ;
 scalar_t__ xwrite ;
 int z80_map_set (int ,int,int,scalar_t__,int) ;
 int z80_read_map ;
 int z80_sms_in ;
 int z80_sms_out ;
 int z80_write_map ;

void PicoMemSetupMS(void)
{
  z80_map_set(z80_read_map, 0x0000, 0xbfff, Pico.rom, 0);
  z80_map_set(z80_read_map, 0xc000, 0xdfff, Pico.zram, 0);
  z80_map_set(z80_read_map, 0xe000, 0xffff, Pico.zram, 0);

  z80_map_set(z80_write_map, 0x0000, 0xbfff, xwrite, 1);
  z80_map_set(z80_write_map, 0xc000, 0xdfff, Pico.zram, 0);
  z80_map_set(z80_write_map, 0xe000, 0xffff, xwrite, 1);
}
