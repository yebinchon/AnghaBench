
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int font_data_t ;


 int font_driver_free (int *) ;

void menu_display_font_free(font_data_t *font)
{
   font_driver_free(font);
}
