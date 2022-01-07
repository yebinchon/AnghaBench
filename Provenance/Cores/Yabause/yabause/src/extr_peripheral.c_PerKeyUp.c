
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ key; int controller; TYPE_1__* base; } ;
struct TYPE_3__ {int (* Release ) (int ) ;} ;


 TYPE_2__* perkeyconfig ;
 unsigned int perkeyconfigsize ;
 int stub1 (int ) ;

void PerKeyUp(u32 key)
{
 unsigned int i = 0;

 while(i < perkeyconfigsize)
 {
  if (key == perkeyconfig[i].key)
  {
   perkeyconfig[i].base->Release(perkeyconfig[i].controller);
  }
  i++;
 }
}
