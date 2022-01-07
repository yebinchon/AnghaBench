
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int core_info_t ;
struct TYPE_3__ {int path; } ;
typedef TYPE_1__ core_info_ctx_find_t ;


 int core_info_curr_list ;
 int core_info_current ;
 int core_info_get_current_core (int **) ;
 int core_info_init_current_core () ;
 int core_info_list_get_info (int ,int *,int ) ;

bool core_info_load(core_info_ctx_find_t *info)
{
   core_info_t *core_info = ((void*)0);

   if (!info)
      return 0;

   if (!core_info_current)
      core_info_init_current_core();

   core_info_get_current_core(&core_info);

   if (!core_info_curr_list)
      return 0;

   if (!core_info_list_get_info(core_info_curr_list,
            core_info, info->path))
      return 0;

   return 1;
}
