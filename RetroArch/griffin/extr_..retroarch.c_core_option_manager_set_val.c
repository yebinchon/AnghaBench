
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct core_option {size_t index; TYPE_1__* vals; } ;
struct TYPE_5__ {size_t size; int updated; int * opts; } ;
typedef TYPE_2__ core_option_manager_t ;
struct TYPE_4__ {size_t size; } ;



void core_option_manager_set_val(core_option_manager_t *opt,
      size_t idx, size_t val_idx)
{
   struct core_option *option= ((void*)0);

   if (!opt)
      return;
   if (idx >= opt->size)
      return;

   option = (struct core_option*)&opt->opts[idx];
   option->index = val_idx % option->vals->size;

   opt->updated = 1;
}
