
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Screen_show_1200_leds ;
 int Screen_show_atari_speed ;
 int Screen_show_disk_led ;
 int Screen_show_sector_counter ;
 int fprintf (int *,char*,int) ;

void Screen_WriteConfig(FILE *fp)
{
 fprintf(fp, "SCREEN_SHOW_SPEED=%d\n", Screen_show_atari_speed);
 fprintf(fp, "SCREEN_SHOW_IO_ACTIVITY=%d\n", Screen_show_disk_led);
 fprintf(fp, "SCREEN_SHOW_IO_COUNTER=%d\n", Screen_show_sector_counter);
 fprintf(fp, "SCREEN_SHOW_1200XL_LEDS=%d\n", Screen_show_1200_leds);
}
