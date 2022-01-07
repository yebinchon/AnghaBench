
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_shader {int dummy; } ;
struct TYPE_2__ {struct video_shader* shader; } ;
typedef TYPE_1__ glsl_shader_data_t ;



__attribute__((used)) static struct video_shader *gl_glsl_get_current_shader(void *data)
{
   glsl_shader_data_t *glsl = (glsl_shader_data_t*)data;
   if (!glsl)
      return ((void*)0);
   return glsl->shader;
}
