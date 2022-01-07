
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int SessionList; } ;
typedef int SESSION ;
typedef TYPE_1__ HUB ;


 int DeleteAll (int ) ;
 int Free (int **) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseSession (int *) ;
 int StopSession (int *) ;
 int ** ToArray (int ) ;
 int UnlockList (int ) ;

void StopAllSession(HUB *h)
{
 SESSION **s;
 UINT i, num;

 if (h == ((void*)0))
 {
  return;
 }

 LockList(h->SessionList);
 {
  num = LIST_NUM(h->SessionList);
  s = ToArray(h->SessionList);
  DeleteAll(h->SessionList);
 }
 UnlockList(h->SessionList);

 for (i = 0;i < num;i++)
 {
  StopSession(s[i]);
  ReleaseSession(s[i]);
 }

 Free(s);
}
