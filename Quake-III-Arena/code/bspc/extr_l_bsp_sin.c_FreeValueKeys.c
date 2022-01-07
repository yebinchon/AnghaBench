
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* key; struct TYPE_5__* value; struct TYPE_5__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_6__ {TYPE_1__* epairs; } ;
typedef TYPE_2__ entity_t ;


 int FreeMemory (TYPE_1__*) ;

void FreeValueKeys(entity_t *ent)
{
 epair_t *ep,*next;

 for (ep=ent->epairs ; ep ; ep=next)
 {
  next = ep->next;
  FreeMemory(ep->value);
  FreeMemory(ep->key);
  FreeMemory(ep);
 }
 ent->epairs = ((void*)0);
}
