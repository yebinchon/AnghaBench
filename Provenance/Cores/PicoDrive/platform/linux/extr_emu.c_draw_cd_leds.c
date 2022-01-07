
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* s68k_regs; } ;
struct TYPE_3__ {scalar_t__ renderer; } ;


 TYPE_2__* Pico_mcd ;
 scalar_t__ RT_16BIT ;
 TYPE_1__ currentConfig ;
 scalar_t__ g_screen_ptr ;
 unsigned int p (int) ;

__attribute__((used)) static void draw_cd_leds(void)
{
 int led_reg, pitch, scr_offs, led_offs;
 led_reg = Pico_mcd->s68k_regs[0];

 pitch = 320;
 led_offs = 4;
 scr_offs = pitch * 2 + 4;

 if (currentConfig.renderer != RT_16BIT) {


  unsigned int *px = (unsigned int *)((char *)g_screen_ptr + scr_offs);
  unsigned int col_g = (led_reg & 2) ? 0xc0c0c0c0 : 0xe0e0e0e0;
  unsigned int col_r = (led_reg & 1) ? 0xd0d0d0d0 : 0xe0e0e0e0;
  px[(pitch*0) >> 2] = px[(pitch*1) >> 2] = px[(pitch*2) >> 2] = col_g;
  px[(pitch*0 + led_offs) >> 2] = px[(pitch*1 + led_offs) >> 2] = px[(pitch*2 + led_offs) >> 2] = col_r;

 } else {


  unsigned int *px = (unsigned int *)((short *)g_screen_ptr + scr_offs);
  unsigned int col_g = (led_reg & 2) ? 0x06000600 : 0;
  unsigned int col_r = (led_reg & 1) ? 0xc000c000 : 0;
  px[(pitch*0)*2 >> 2] = px[((pitch*0)*2 >> 2) + 1] = px[(pitch*1)*2 >> 2] = px[((pitch*1)*2 >> 2) + 1] = px[(pitch*2)*2 >> 2] = px[((pitch*2)*2 >> 2) + 1] = col_g;
  px[(pitch*0 + led_offs)*2 >> 2] = px[((pitch*0 + led_offs)*2 >> 2) + 1] = px[(pitch*1 + led_offs)*2 >> 2] = px[((pitch*1 + led_offs)*2 >> 2) + 1] = px[(pitch*2 + led_offs)*2 >> 2] = px[((pitch*2 + led_offs)*2 >> 2) + 1] = col_r;

 }
}
