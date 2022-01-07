
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int core_name; } ;
typedef TYPE_1__ core_info_t ;


 int strcasecmp (int ,int ) ;
 scalar_t__ string_is_empty (int ) ;

__attribute__((used)) static int core_info_qsort_func_core_name(const core_info_t *a,
      const core_info_t *b)
{
   if (!a || !b)
      return 0;

   if (string_is_empty(a->core_name) || string_is_empty(b->core_name))
      return 0;

   return strcasecmp(a->core_name, b->core_name);
}
