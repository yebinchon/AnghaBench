
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int HubList; } ;
struct TYPE_7__ {int SessionList; } ;
struct TYPE_6__ {int lock; int ref; int SessionKey; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ HUB ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 scalar_t__ Cmp (int ,int *,int ) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int SHA1_SIZE ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

SESSION *GetSessionFromKey(CEDAR *cedar, UCHAR *session_key)
{
 HUB *h;
 UINT i, j;

 if (cedar == ((void*)0) || session_key == ((void*)0))
 {
  return ((void*)0);
 }

 LockList(cedar->HubList);
 {
  for (i = 0;i < LIST_NUM(cedar->HubList);i++)
  {
   h = LIST_DATA(cedar->HubList, i);
   LockList(h->SessionList);
   {
    for (j = 0;j < LIST_NUM(h->SessionList);j++)
    {
     SESSION *s = LIST_DATA(h->SessionList, j);
     Lock(s->lock);
     {
      if (Cmp(s->SessionKey, session_key, SHA1_SIZE) == 0)
      {

       AddRef(s->ref);


       Unlock(s->lock);
       UnlockList(h->SessionList);
       UnlockList(cedar->HubList);
       return s;
      }
     }
     Unlock(s->lock);
    }
   }
   UnlockList(h->SessionList);
  }
 }
 UnlockList(cedar->HubList);

 return ((void*)0);
}
