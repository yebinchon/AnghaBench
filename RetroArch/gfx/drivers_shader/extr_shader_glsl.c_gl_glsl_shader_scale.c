
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gfx_fbo_scale {int valid; } ;
struct TYPE_6__ {TYPE_2__* shader; } ;
typedef TYPE_3__ glsl_shader_data_t ;
struct TYPE_5__ {TYPE_1__* pass; } ;
struct TYPE_4__ {struct gfx_fbo_scale fbo; } ;



__attribute__((used)) static void gl_glsl_shader_scale(void *data, unsigned idx, struct gfx_fbo_scale *scale)
{
   glsl_shader_data_t *glsl = (glsl_shader_data_t*)data;
   if (glsl && idx)
      *scale = glsl->shader->pass[idx - 1].fbo;
   else
      scale->valid = 0;
}
