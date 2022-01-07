
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct core_option {size_t index; TYPE_2__* val_labels; } ;
struct TYPE_7__ {size_t size; int * opts; } ;
typedef TYPE_3__ core_option_manager_t ;
struct TYPE_6__ {TYPE_1__* elems; } ;
struct TYPE_5__ {char const* data; } ;



const char *core_option_manager_get_val_label(core_option_manager_t *opt, size_t idx)
{
   struct core_option *option = ((void*)0);
   if (!opt)
      return ((void*)0);
   if (idx >= opt->size)
      return ((void*)0);
   option = (struct core_option*)&opt->opts[idx];
   return option->val_labels->elems[option->index].data;
}
