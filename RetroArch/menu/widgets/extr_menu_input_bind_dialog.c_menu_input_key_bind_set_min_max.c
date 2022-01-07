
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max; int min; } ;
typedef TYPE_1__ menu_input_ctx_bind_limits_t ;
struct TYPE_5__ {int last; int begin; } ;


 TYPE_3__ menu_input_binds ;

bool menu_input_key_bind_set_min_max(menu_input_ctx_bind_limits_t *lim)
{
   if (!lim)
      return 0;

   menu_input_binds.begin = lim->min;
   menu_input_binds.last = lim->max;

   return 1;
}
