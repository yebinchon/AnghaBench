
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_shader {int dummy; } ;
struct TYPE_4__ {int shader_data; TYPE_1__* shader; } ;
typedef TYPE_2__ gl_t ;
struct TYPE_3__ {struct video_shader* (* get_current_shader ) (int ) ;} ;


 struct video_shader* stub1 (int ) ;

__attribute__((used)) static struct video_shader *gl2_get_current_shader(void *data)
{
   gl_t *gl = (gl_t*)data;

   if (!gl)
      return ((void*)0);

   return gl->shader->get_current_shader(gl->shader_data);
}
