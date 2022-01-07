
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef void emscripten_ctx_data_t ;
typedef int EGLint ;





 scalar_t__ EGL_DEFAULT_DISPLAY ;






 int RARCH_LOG (char*,...) ;
 scalar_t__ calloc (int,int) ;
 int egl_create_context (int *,int const*) ;
 int egl_create_surface (int *,int ) ;
 int egl_get_video_size (int *,unsigned int*,unsigned int*) ;
 int egl_init_context (int *,int const,void*,int*,int*,int*,int const*,int *) ;
 int egl_report_error () ;
 int emscripten_get_canvas_element_size (char*,scalar_t__*,scalar_t__*) ;
 scalar_t__ emscripten_initial_height ;
 scalar_t__ emscripten_initial_width ;
 scalar_t__ g_egl_inited ;
 int gfx_ctx_emscripten_destroy (void*) ;

__attribute__((used)) static void *gfx_ctx_emscripten_init(video_frame_info_t *video_info,
   void *video_driver)
{
   emscripten_ctx_data_t *emscripten = (emscripten_ctx_data_t*)
      calloc(1, sizeof(*emscripten));

   if (!emscripten)
      return ((void*)0);

   (void)video_driver;

   if (emscripten_initial_width == 0 || emscripten_initial_height == 0)
      emscripten_get_canvas_element_size("#canvas",
         &emscripten_initial_width, &emscripten_initial_height);
   return emscripten;

error:
   gfx_ctx_emscripten_destroy(video_driver);
   return ((void*)0);
}
