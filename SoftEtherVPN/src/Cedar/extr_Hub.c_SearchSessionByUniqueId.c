
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int SessionList; } ;
struct TYPE_6__ {scalar_t__ UniqueId; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ HUB ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

SESSION *SearchSessionByUniqueId(HUB *h, UINT id)
{
 UINT i;

 if (h == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(h->SessionList);i++)
 {
  SESSION *s = LIST_DATA(h->SessionList, i);

  if (s->UniqueId == id)
  {
   return s;
  }
 }

 return ((void*)0);
}
