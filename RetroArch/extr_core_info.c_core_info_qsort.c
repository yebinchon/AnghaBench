
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum core_info_list_qsort_type { ____Placeholder_core_info_list_qsort_type } core_info_list_qsort_type ;
typedef int core_info_t ;
struct TYPE_3__ {int count; int list; } ;
typedef TYPE_1__ core_info_list_t ;






 scalar_t__ core_info_qsort_func_core_name ;
 scalar_t__ core_info_qsort_func_display_name ;
 scalar_t__ core_info_qsort_func_path ;
 scalar_t__ core_info_qsort_func_system_name ;
 int qsort (int ,int,int,int (*) (void const*,void const*)) ;

void core_info_qsort(core_info_list_t *core_info_list,
      enum core_info_list_qsort_type qsort_type)
{
   if (!core_info_list)
      return;

   if (core_info_list->count < 2)
      return;

   switch (qsort_type)
   {
      case 129:
         qsort(core_info_list->list,
               core_info_list->count,
               sizeof(core_info_t),
               (int (*)(const void *, const void *))
               core_info_qsort_func_path);
         break;
      case 130:
         qsort(core_info_list->list,
               core_info_list->count,
               sizeof(core_info_t),
               (int (*)(const void *, const void *))
               core_info_qsort_func_display_name);
         break;
      case 131:
         qsort(core_info_list->list,
               core_info_list->count,
               sizeof(core_info_t),
               (int (*)(const void *, const void *))
               core_info_qsort_func_core_name);
         break;
      case 128:
         qsort(core_info_list->list,
               core_info_list->count,
               sizeof(core_info_t),
               (int (*)(const void *, const void *))
               core_info_qsort_func_system_name);
         break;
      default:
         return;
   }
}
