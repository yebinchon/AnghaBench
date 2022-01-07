
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t* hw_render_fbo; int tex_index; int textures; int has_fbo; } ;
typedef TYPE_1__ gl_t ;



__attribute__((used)) static uintptr_t gl2_get_current_framebuffer(void *data)
{
   gl_t *gl = (gl_t*)data;
   if (!gl || !gl->has_fbo)
      return 0;
   return gl->hw_render_fbo[(gl->tex_index + 1) % gl->textures];
}
