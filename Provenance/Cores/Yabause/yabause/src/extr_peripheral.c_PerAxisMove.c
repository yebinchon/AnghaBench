
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int s32 ;
struct TYPE_4__ {scalar_t__ key; int controller; TYPE_1__* base; } ;
struct TYPE_3__ {int (* MoveAxis ) (int ,int ,int ) ;} ;


 TYPE_2__* perkeyconfig ;
 unsigned int perkeyconfigsize ;
 int stub1 (int ,int ,int ) ;

void PerAxisMove(u32 key, s32 dispx, s32 dispy)
{
   unsigned int i = 0;

   while(i < perkeyconfigsize)
   {
      if (key == perkeyconfig[i].key)
      {
         if (perkeyconfig[i].base->MoveAxis)
            perkeyconfig[i].base->MoveAxis(perkeyconfig[i].controller, dispx, dispy);
      }
      i++;
   }
}
