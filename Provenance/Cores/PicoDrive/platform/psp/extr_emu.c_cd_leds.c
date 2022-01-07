
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* s68k_regs; } ;


 TYPE_1__* Pico_mcd ;
 scalar_t__ psp_screen ;

__attribute__((used)) static void cd_leds(void)
{
 unsigned int reg, col_g, col_r, *p;

 reg = Pico_mcd->s68k_regs[0];

 p = (unsigned int *)((short *)psp_screen + 512*2+4+2);
 col_g = (reg & 2) ? 0x06000600 : 0;
 col_r = (reg & 1) ? 0x00180018 : 0;
 *p++ = col_g; *p++ = col_g; p+=2; *p++ = col_r; *p++ = col_r; p += 512/2 - 12/2;
 *p++ = col_g; *p++ = col_g; p+=2; *p++ = col_r; *p++ = col_r; p += 512/2 - 12/2;
 *p++ = col_g; *p++ = col_g; p+=2; *p++ = col_r; *p++ = col_r;
}
