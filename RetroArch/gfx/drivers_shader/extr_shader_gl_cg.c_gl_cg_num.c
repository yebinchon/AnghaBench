
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* shader; } ;
typedef TYPE_2__ cg_shader_data_t ;
struct TYPE_3__ {int passes; } ;



__attribute__((used)) static unsigned gl_cg_num(void *data)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;
   if (!cg)
      return 0;
   return cg->shader->passes;
}
