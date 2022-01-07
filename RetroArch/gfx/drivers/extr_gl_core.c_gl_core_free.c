
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gl_core_t ;


 int font_driver_free_osd () ;
 int gl_core_context_bind_hw_render (int *,int) ;
 int gl_core_destroy_resources (int *) ;
 int video_context_driver_free () ;

__attribute__((used)) static void gl_core_free(void *data)
{
   gl_core_t *gl = (gl_core_t*)data;
   if (!gl)
      return;

   gl_core_context_bind_hw_render(gl, 0);
   font_driver_free_osd();
   gl_core_destroy_resources(gl);
   video_context_driver_free();
}
