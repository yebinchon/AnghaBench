
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int core_set_shared_context ;

bool libretro_get_shared_context(void)
{
   return core_set_shared_context;
}
