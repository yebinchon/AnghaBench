
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* s68k_regs; } ;


 TYPE_1__* Pico_mcd ;
 scalar_t__ giz_screen ;

__attribute__((used)) static void cd_leds(void)
{
 static int old_reg = 0;
 unsigned int col_g, col_r, *p;

 if (!((Pico_mcd->s68k_regs[0] ^ old_reg) & 3)) return;
 old_reg = Pico_mcd->s68k_regs[0];

 p = (unsigned int *)((short *)giz_screen + 321*2+4+2);
 col_g = (old_reg & 2) ? 0x06000600 : 0;
 col_r = (old_reg & 1) ? 0xc000c000 : 0;
 *p++ = col_g; *p++ = col_g; p+=2; *p++ = col_r; *p++ = col_r; p += 321/2 - 12/2 + 1;
 *p++ = col_g; p+=3; *p++ = col_r; p += 321/2 - 10/2;
 *p++ = col_g; *p++ = col_g; p+=2; *p++ = col_r; *p++ = col_r;
}
