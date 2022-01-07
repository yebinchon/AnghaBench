
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int core_info_t ;


 int * core_info_current ;

bool core_info_get_current_core(core_info_t **core)
{
   if (!core)
      return 0;
   *core = core_info_current;
   return 1;
}
