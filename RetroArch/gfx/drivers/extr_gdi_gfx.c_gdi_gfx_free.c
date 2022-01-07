
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ winDC; scalar_t__ memDC; scalar_t__ texDC; scalar_t__ bmp; } ;
typedef TYPE_1__ gdi_t ;
typedef scalar_t__ HWND ;


 int DeleteDC (scalar_t__) ;
 int DeleteObject (scalar_t__) ;
 int ReleaseDC (scalar_t__,scalar_t__) ;
 int font_driver_free_osd () ;
 int free (TYPE_1__*) ;
 TYPE_1__* gdi_menu_frame ;
 TYPE_1__* gdi_temp_buf ;
 int video_context_driver_free () ;
 scalar_t__ win32_get_window () ;

__attribute__((used)) static void gdi_gfx_free(void *data)
{
   gdi_t *gdi = (gdi_t*)data;
   HWND hwnd = win32_get_window();

   if (gdi_menu_frame)
   {
      free(gdi_menu_frame);
      gdi_menu_frame = ((void*)0);
   }

   if (gdi_temp_buf)
   {
      free(gdi_temp_buf);
      gdi_temp_buf = ((void*)0);
   }

   if (!gdi)
      return;

   if (gdi->bmp)
      DeleteObject(gdi->bmp);

   if (gdi->texDC)
   {
      DeleteDC(gdi->texDC);
      gdi->texDC = 0;
   }
   if (gdi->memDC)
   {
      DeleteDC(gdi->memDC);
      gdi->memDC = 0;
   }

   if (hwnd && gdi->winDC)
   {
      ReleaseDC(hwnd, gdi->winDC);
      gdi->winDC = 0;
   }

   font_driver_free_osd();
   video_context_driver_free();
   free(gdi);
}
