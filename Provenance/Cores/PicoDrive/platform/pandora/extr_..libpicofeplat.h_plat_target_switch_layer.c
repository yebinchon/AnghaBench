
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* switch_layer ) (int,int) ;} ;


 TYPE_1__ plat_target ;
 int stub1 (int,int) ;

__attribute__((used)) static __inline int plat_target_switch_layer(int which, int enable)
{
 if (plat_target.switch_layer)
  return plat_target.switch_layer(which, enable);
 return -1;
}
