
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int core_info_list_t ;


 int * core_info_curr_list ;

bool core_info_get_list(core_info_list_t **core)
{
   if (!core)
      return 0;
   *core = core_info_curr_list;
   return 1;
}
