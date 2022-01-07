
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_clock_get ) () ;} ;


 TYPE_1__ plat_target ;
 int stub1 () ;

__attribute__((used)) static __inline int plat_target_cpu_clock_get(void)
{
 if (plat_target.cpu_clock_get)
  return plat_target.cpu_clock_get();
 return -1;
}
