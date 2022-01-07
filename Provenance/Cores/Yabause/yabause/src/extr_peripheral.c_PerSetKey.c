
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {void* controller; int key; TYPE_1__* base; } ;
struct TYPE_3__ {scalar_t__ name; } ;


 TYPE_2__* perkeyconfig ;
 unsigned int perkeyconfigsize ;

void PerSetKey(u32 key, u8 name, void * controller)
{
 unsigned int i = 0;

 while(i < perkeyconfigsize)
 {
  if ((name == perkeyconfig[i].base->name) && (controller == perkeyconfig[i].controller))
  {
   perkeyconfig[i].key = key;
  }
  i++;
 }
}
