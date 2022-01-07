
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num; } ;
typedef TYPE_2__ video_shader_ctx_info_t ;
struct TYPE_8__ {int shader_data; TYPE_1__* shader; } ;
typedef TYPE_3__ gl_t ;
struct TYPE_6__ {int (* num_shaders ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static bool gl2_shader_info(gl_t *gl,
      video_shader_ctx_info_t *shader_info)
{
   if (!shader_info)
      return 0;

   shader_info->num = gl->shader->num_shaders(gl->shader_data);

   return 1;
}
