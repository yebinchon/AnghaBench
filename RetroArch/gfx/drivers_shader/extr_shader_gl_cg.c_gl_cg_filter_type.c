
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* shader; } ;
typedef TYPE_3__ cg_shader_data_t ;
struct TYPE_5__ {TYPE_1__* pass; } ;
struct TYPE_4__ {scalar_t__ filter; } ;


 scalar_t__ RARCH_FILTER_LINEAR ;
 scalar_t__ RARCH_FILTER_UNSPEC ;

__attribute__((used)) static bool gl_cg_filter_type(void *data, unsigned idx, bool *smooth)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;
   if (cg && idx &&
         (cg->shader->pass[idx - 1].filter != RARCH_FILTER_UNSPEC)
      )
   {
      *smooth = (cg->shader->pass[idx - 1].filter == RARCH_FILTER_LINEAR);
      return 1;
   }

   return 0;
}
