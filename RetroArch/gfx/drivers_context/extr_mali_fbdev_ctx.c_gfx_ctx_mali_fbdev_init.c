
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef void mali_ctx_data_t ;
typedef int EGLint ;




 int EGL_DEFAULT_DISPLAY ;







 int RARCH_ERR (char*,int ) ;
 scalar_t__ calloc (int,int) ;
 int eglGetError () ;
 int egl_init_context (int *,int const,int ,int*,int*,int*,int const*,int *) ;
 int egl_report_error () ;
 int frontend_driver_install_signal_handler () ;
 int gfx_ctx_mali_fbdev_destroy (void*) ;

__attribute__((used)) static void *gfx_ctx_mali_fbdev_init(video_frame_info_t *video_info,
      void *video_driver)
{
   mali_ctx_data_t *mali = (mali_ctx_data_t*)calloc(1, sizeof(*mali));

   if (!mali)
       return ((void*)0);
   return mali;

error:
   RARCH_ERR("[Mali fbdev]: EGL error: %d.\n", eglGetError());
   gfx_ctx_mali_fbdev_destroy(video_driver);
   return ((void*)0);
}
