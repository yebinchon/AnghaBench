
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; TYPE_1__* opts; } ;
typedef TYPE_2__ core_option_manager_t ;
struct TYPE_4__ {char const* desc; } ;



const char *core_option_manager_get_desc(
      core_option_manager_t *opt, size_t idx)
{
   if (!opt)
      return ((void*)0);
   if (idx >= opt->size)
      return ((void*)0);
   return opt->opts[idx].desc;
}
