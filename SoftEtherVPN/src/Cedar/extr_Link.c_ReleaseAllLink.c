
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int LinkList; } ;
typedef int LINK ;
typedef TYPE_1__ HUB ;


 int DeleteAll (int ) ;
 int Free (int **) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseLink (int *) ;
 int ** ToArray (int ) ;
 int UnlockList (int ) ;

void ReleaseAllLink(HUB *h)
{
 LINK **kk;
 UINT num, i;

 if (h == ((void*)0))
 {
  return;
 }

 LockList(h->LinkList);
 {
  num = LIST_NUM(h->LinkList);
  kk = ToArray(h->LinkList);
  DeleteAll(h->LinkList);
 }
 UnlockList(h->LinkList);

 for (i = 0;i < num;i++)
 {
  LINK *k = kk[i];

  ReleaseLink(k);
 }

 Free(kk);
}
