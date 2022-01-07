
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int lcd_rate_100 ;
 int lcd_rate_120 ;
 int* memregs ;
 int printf (char*,...) ;
 int set_reg_setting (int ) ;
 int stdout ;

__attribute__((used)) static int mmsp2_lcdrate_set(int is_pal)
{
 if (memregs[0x2800>>1] & 0x100)
  return 0;

 printf("setting custom LCD refresh (%d Hz)... ", is_pal ? 100 : 120);
 fflush(stdout);

 set_reg_setting(is_pal ? lcd_rate_100 : lcd_rate_120);
 printf("done.\n");
 return 0;
}
