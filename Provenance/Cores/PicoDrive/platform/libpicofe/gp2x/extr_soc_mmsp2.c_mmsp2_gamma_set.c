
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_lcd_gamma_ (int,int) ;

__attribute__((used)) static int mmsp2_gamma_set(int val, int black_level)
{
 set_lcd_gamma_(val, 1);
 return 0;
}
