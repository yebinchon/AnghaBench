
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef void gfx_ctx_gdi_data_t ;
struct TYPE_3__ {int lpfnWndProc; int member_0; } ;
typedef TYPE_1__ WNDCLASSEX ;


 int WndProcGDI ;
 scalar_t__ calloc (int,int) ;
 int free (void*) ;
 scalar_t__ g_win32_inited ;
 int win32_monitor_init () ;
 int win32_window_init (TYPE_1__*,int,int *) ;
 int win32_window_reset () ;

__attribute__((used)) static void *gfx_ctx_gdi_init(
      video_frame_info_t *video_info, void *video_driver)
{
   WNDCLASSEX wndclass = {0};
   gfx_ctx_gdi_data_t *gdi = (gfx_ctx_gdi_data_t*)calloc(1, sizeof(*gdi));

   if (!gdi)
      return ((void*)0);

   if (g_win32_inited)
      goto error;

   win32_window_reset();
   win32_monitor_init();

   wndclass.lpfnWndProc = WndProcGDI;
   if (!win32_window_init(&wndclass, 1, ((void*)0)))
      goto error;

   return gdi;

error:
   if (gdi)
      free(gdi);
   return ((void*)0);
}
