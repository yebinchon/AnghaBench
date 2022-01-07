
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * core_info_curr_list ;
 int core_info_list_free (int *) ;

void core_info_deinit_list(void)
{
   if (core_info_curr_list)
      core_info_list_free(core_info_curr_list);
   core_info_curr_list = ((void*)0);
}
