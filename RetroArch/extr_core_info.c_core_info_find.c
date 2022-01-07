
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inf; } ;
typedef TYPE_1__ core_info_ctx_find_t ;


 int core_info_curr_list ;
 int core_info_find_internal (int ,char const*) ;

bool core_info_find(core_info_ctx_find_t *info, const char *core_path)
{
   if (!info || !core_info_curr_list)
      return 0;
   info->inf = core_info_find_internal(core_info_curr_list, core_path);
   if (!info->inf)
      return 0;
   return 1;
}
