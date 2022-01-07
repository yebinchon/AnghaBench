
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ SR; } ;


 scalar_t__ RESET ;
 TYPE_1__* WWDG ;

void WWDG_ClearFlag(void)
{
  WWDG->SR = (uint32_t)RESET;
}
