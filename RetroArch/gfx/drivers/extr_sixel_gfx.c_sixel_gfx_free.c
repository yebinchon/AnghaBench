
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sixel_t ;


 int font_driver_free_osd () ;
 int free (int *) ;
 int printf (char*) ;
 int * sixel_menu_frame ;
 int * sixel_temp_buf ;

__attribute__((used)) static void sixel_gfx_free(void *data)
{
   sixel_t *sixel = (sixel_t*)data;

   printf("\033\\");

   if (sixel_menu_frame)
   {
      free(sixel_menu_frame);
      sixel_menu_frame = ((void*)0);
   }

   if (sixel_temp_buf)
   {
      free(sixel_temp_buf);
      sixel_temp_buf = ((void*)0);
   }

   font_driver_free_osd();

   if (sixel)
      free(sixel);
}
