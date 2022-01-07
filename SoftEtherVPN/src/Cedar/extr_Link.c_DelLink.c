
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int LinkList; } ;
typedef int LINK ;
typedef TYPE_1__ HUB ;


 scalar_t__ Delete (int ,int *) ;
 int LockList (int ) ;
 int ReleaseLink (int *) ;
 int UnlockList (int ) ;

void DelLink(HUB *hub, LINK *k)
{

 if (hub == ((void*)0) || k == ((void*)0))
 {
  return;
 }

 LockList(hub->LinkList);
 {
  if (Delete(hub->LinkList, k))
  {
   ReleaseLink(k);
  }
 }
 UnlockList(hub->LinkList);
}
