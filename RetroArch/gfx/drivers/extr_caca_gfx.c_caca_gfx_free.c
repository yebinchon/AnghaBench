
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * caca_display ;
 int * caca_dither ;
 int caca_free_display (int *) ;
 int caca_free_dither (int *) ;
 int * caca_menu_frame ;
 int free (int *) ;

__attribute__((used)) static void caca_gfx_free(void *data)
{
   (void)data;

   if (caca_display)
   {
      caca_free_display(caca_display);
      caca_display = ((void*)0);
   }

   if (caca_dither)
   {
      caca_free_dither(caca_dither);
      caca_dither = ((void*)0);
   }

   if (caca_menu_frame)
   {
      free(caca_menu_frame);
      caca_menu_frame = ((void*)0);
   }
}
