
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t hw_render_fbo; int hw_render_enable; } ;
typedef TYPE_1__ gl_core_t ;



__attribute__((used)) static uintptr_t gl_core_get_current_framebuffer(void *data)
{
   gl_core_t *gl = (gl_core_t*)data;
   if (!gl || !gl->hw_render_enable)
      return 0;
   return gl->hw_render_fbo;
}
