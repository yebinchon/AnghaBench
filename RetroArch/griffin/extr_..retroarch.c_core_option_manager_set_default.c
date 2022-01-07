
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; int updated; TYPE_1__* opts; } ;
typedef TYPE_2__ core_option_manager_t ;
struct TYPE_4__ {int default_index; int index; } ;



void core_option_manager_set_default(core_option_manager_t *opt, size_t idx)
{
   if (!opt)
      return;
   if (idx >= opt->size)
      return;

   opt->opts[idx].index = opt->opts[idx].default_index;
   opt->updated = 1;
}
