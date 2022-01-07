
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fontpath ;
typedef int font_data_t ;
typedef enum application_special_type { ____Placeholder_application_special_type } application_special_type ;


 int PATH_MAX_LENGTH ;
 int fill_pathname_application_special (char*,int,int) ;
 int menu_disp ;
 int * menu_display_font_file (char*,float,int) ;

font_data_t *menu_display_font(
      enum application_special_type type,
      float menu_font_size,
      bool is_threaded)
{
   char fontpath[PATH_MAX_LENGTH];

   if (!menu_disp)
      return ((void*)0);

   fontpath[0] = '\0';

   fill_pathname_application_special(
         fontpath, sizeof(fontpath), type);

   return menu_display_font_file(fontpath, menu_font_size, is_threaded);
}
