
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int core_info_t ;


 scalar_t__ calloc (int,int) ;
 int * core_info_current ;

bool core_info_init_current_core(void)
{
   core_info_current = (core_info_t*)calloc(1, sizeof(core_info_t));
   if (!core_info_current)
      return 0;
   return 1;
}
