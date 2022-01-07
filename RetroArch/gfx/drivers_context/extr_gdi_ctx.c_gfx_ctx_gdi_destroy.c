
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfx_ctx_gdi_data_t ;
typedef scalar_t__ HWND ;


 int ReleaseDC (scalar_t__,int *) ;
 int free (int *) ;
 int g_win32_inited ;
 int g_win32_restore_desktop ;
 int win32_destroy_window () ;
 int * win32_gdi_hdc ;
 scalar_t__ win32_gdi_major ;
 scalar_t__ win32_gdi_minor ;
 scalar_t__ win32_get_window () ;
 int win32_monitor_from_window () ;
 int win32_monitor_get_info () ;

__attribute__((used)) static void gfx_ctx_gdi_destroy(void *data)
{
   gfx_ctx_gdi_data_t *gdi = (gfx_ctx_gdi_data_t*)data;
   HWND window = win32_get_window();

   if (window && win32_gdi_hdc)
   {
      ReleaseDC(window, win32_gdi_hdc);
      win32_gdi_hdc = ((void*)0);
   }

   if (window)
   {
      win32_monitor_from_window();
      win32_destroy_window();
   }

   if (g_win32_restore_desktop)
   {
      win32_monitor_get_info();
      g_win32_restore_desktop = 0;
   }

   if (gdi)
      free(gdi);

   g_win32_inited = 0;
   win32_gdi_major = 0;
   win32_gdi_minor = 0;
}
