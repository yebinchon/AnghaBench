
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcd_rate_defaults ;
 int printf (char*) ;
 int set_reg_setting (int ) ;

__attribute__((used)) static void unset_lcd_custom_rate_(void)
{
 printf("reset to prev LCD refresh.\n");
 set_reg_setting(lcd_rate_defaults);
}
