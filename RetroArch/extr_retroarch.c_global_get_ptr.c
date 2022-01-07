
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int global_t ;


 int g_extern ;

global_t *global_get_ptr(void)
{
   return &g_extern;
}
