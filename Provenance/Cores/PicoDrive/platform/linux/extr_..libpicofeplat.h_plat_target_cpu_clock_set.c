
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_clock_set ) (int) ;} ;


 TYPE_1__ plat_target ;
 int stub1 (int) ;

__attribute__((used)) static __inline int plat_target_cpu_clock_set(int mhz)
{
 if (plat_target.cpu_clock_set)
  return plat_target.cpu_clock_set(mhz);
 return -1;
}
