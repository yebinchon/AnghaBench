
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * core_info_current ;
 int free (int *) ;

void core_info_free_current_core(void)
{
   if (core_info_current)
      free(core_info_current);
   core_info_current = ((void*)0);
}
