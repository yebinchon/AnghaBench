
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* shader; } ;
typedef TYPE_2__ glsl_shader_data_t ;
struct TYPE_3__ {scalar_t__ feedback_pass; } ;



__attribute__((used)) static bool gl_glsl_get_feedback_pass(void *data, unsigned *index)
{
   glsl_shader_data_t *glsl = (glsl_shader_data_t*)data;
   if (!glsl || glsl->shader->feedback_pass < 0)
      return 0;

   *index = glsl->shader->feedback_pass;
   return 1;
}
