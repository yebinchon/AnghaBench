
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* gamma_set ) (int,int) ;} ;


 TYPE_1__ plat_target ;
 int stub1 (int,int) ;

__attribute__((used)) static __inline int plat_target_gamma_set(int val, int black_level)
{
 if (plat_target.gamma_set)
  return plat_target.gamma_set(val, black_level);
 return -1;
}
