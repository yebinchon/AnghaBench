
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef void gfx_ctx_wgl_data_t ;
struct TYPE_3__ {int lpfnWndProc; int member_0; } ;
typedef TYPE_1__ WNDCLASSEX ;




 int VULKAN_WSI_WIN32 ;
 int WndProcGL ;
 scalar_t__ calloc (int,int) ;
 int dll_handle ;
 int dylib_load (char*) ;
 int free (void*) ;
 scalar_t__ g_win32_inited ;
 int gfx_ctx_wgl_destroy (int *) ;
 int vulkan_context_init (int *,int ) ;
 int win32_api ;
 int win32_monitor_init () ;
 int win32_vk ;
 int win32_window_init (TYPE_1__*,int,int *) ;
 int win32_window_reset () ;

__attribute__((used)) static void *gfx_ctx_wgl_init(video_frame_info_t *video_info, void *video_driver)
{
   WNDCLASSEX wndclass = {0};
   gfx_ctx_wgl_data_t *wgl = (gfx_ctx_wgl_data_t*)calloc(1, sizeof(*wgl));

   if (!wgl)
      return ((void*)0);

   if (g_win32_inited)
      gfx_ctx_wgl_destroy(((void*)0));





   win32_window_reset();
   win32_monitor_init();

   wndclass.lpfnWndProc = WndProcGL;
   if (!win32_window_init(&wndclass, 1, ((void*)0)))
      goto error;

   switch (win32_api)
   {
      case 128:




         break;
      case 129:
      default:
         break;
   }

   return wgl;

error:
   if (wgl)
      free(wgl);
   return ((void*)0);
}
