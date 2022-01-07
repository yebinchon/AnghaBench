
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* zram; } ;


 int EL_IO ;
 TYPE_1__ Pico ;
 int elprintf (int ,char*,unsigned int,unsigned char) ;
 int write_bank (unsigned int,unsigned char) ;

__attribute__((used)) static void xwrite(unsigned int a, unsigned char d)
{
  elprintf(EL_IO, "z80 write [%04x] %02x", a, d);
  if (a >= 0xc000)
    Pico.zram[a & 0x1fff] = d;
  if (a >= 0xfff8)
    write_bank(a, d);
}
