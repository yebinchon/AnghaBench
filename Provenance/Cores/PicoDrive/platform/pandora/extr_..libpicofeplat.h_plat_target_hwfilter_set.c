
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* hwfilter_set ) (int) ;} ;


 TYPE_1__ plat_target ;
 int stub1 (int) ;

__attribute__((used)) static __inline int plat_target_hwfilter_set(int which)
{
 if (plat_target.hwfilter_set)
  return plat_target.hwfilter_set(which);
 return -1;
}
