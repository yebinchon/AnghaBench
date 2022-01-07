
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_shader {int dummy; } ;
struct TYPE_2__ {struct video_shader* shader; } ;
typedef TYPE_1__ cg_shader_data_t ;



__attribute__((used)) static struct video_shader *gl_cg_get_current_shader(void *data)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;
   if (!cg)
      return ((void*)0);
   return cg->shader;
}
