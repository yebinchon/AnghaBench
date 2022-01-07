
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* shader; } ;
typedef TYPE_2__ glsl_shader_data_t ;
struct TYPE_3__ {int passes; } ;



__attribute__((used)) static unsigned gl_glsl_num(void *data)
{
   glsl_shader_data_t *glsl = (glsl_shader_data_t*)data;
   if (glsl && glsl->shader)
      return glsl->shader->passes;
   return 0;
}
