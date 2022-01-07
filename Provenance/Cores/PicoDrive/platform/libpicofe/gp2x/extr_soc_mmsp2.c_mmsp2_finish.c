
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (scalar_t__) ;
 scalar_t__ cpuclk_was_changed ;
 scalar_t__ gamma_was_changed ;
 scalar_t__ memdev ;
 int * memregs ;
 scalar_t__ mixerdev ;
 int munmap (void*,int) ;
 int pause940 (int) ;
 int reg0910 ;
 int reset940 (int,int) ;
 int set_lcd_gamma_ (int,int ) ;
 scalar_t__ touchdev ;
 int unset_lcd_custom_rate_ () ;
 int unset_ram_timings_ () ;

void mmsp2_finish(void)
{
 reset940(1, 3);
 pause940(1);

 unset_lcd_custom_rate_();
 if (gamma_was_changed)
  set_lcd_gamma_(100, 0);
 unset_ram_timings_();
 if (cpuclk_was_changed)
  memregs[0x910>>1] = reg0910;

 munmap((void *)memregs, 0x10000);
 close(memdev);
 if (touchdev >= 0)
  close(touchdev);
 if (mixerdev >= 0)
  close(mixerdev);
}
