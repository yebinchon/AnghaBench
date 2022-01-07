
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* step_volume ) (int*,int) ;} ;


 TYPE_1__ plat_target ;
 int stub1 (int*,int) ;

__attribute__((used)) static __inline int plat_target_step_volume(int *volume, int diff)
{
 if (plat_target.step_volume)
  return plat_target.step_volume(volume, diff);
 return -1;
}
