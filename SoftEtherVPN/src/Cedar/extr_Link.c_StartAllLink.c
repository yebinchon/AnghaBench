
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int LinkList; } ;
struct TYPE_5__ {int Offline; } ;
typedef TYPE_1__ LINK ;
typedef TYPE_2__ HUB ;


 scalar_t__ LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int StartLink (TYPE_1__*) ;
 int UnlockList (int ) ;

void StartAllLink(HUB *h)
{

 if (h == ((void*)0))
 {
  return;
 }

 LockList(h->LinkList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(h->LinkList);i++)
  {
   LINK *k = (LINK *)LIST_DATA(h->LinkList, i);

   if (k->Offline == 0)
   {
    StartLink(k);
   }
  }
 }
 UnlockList(h->LinkList);
}
