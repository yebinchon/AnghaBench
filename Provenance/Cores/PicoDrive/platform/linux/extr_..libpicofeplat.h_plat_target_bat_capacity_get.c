
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* bat_capacity_get ) () ;} ;


 TYPE_1__ plat_target ;
 int stub1 () ;

__attribute__((used)) static __inline int plat_target_bat_capacity_get(void)
{
 if (plat_target.bat_capacity_get)
  return plat_target.bat_capacity_get();
 return -1;
}
