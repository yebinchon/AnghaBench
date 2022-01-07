
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int ListenerList; } ;
struct TYPE_8__ {scalar_t__ Protocol; int lock; TYPE_1__* Sock; } ;
struct TYPE_7__ {int ref; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ LISTENER ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 scalar_t__ LISTENER_REVERSE ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

SOCK *GetReverseListeningSock(CEDAR *c)
{
 SOCK *s = ((void*)0);

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 LockList(c->ListenerList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(c->ListenerList);i++)
  {
   LISTENER *r = LIST_DATA(c->ListenerList, i);

   if (r->Protocol == LISTENER_REVERSE)
   {
    Lock(r->lock);
    {
     s = r->Sock;

     AddRef(s->ref);
    }
    Unlock(r->lock);
    break;
   }
  }
 }
 UnlockList(c->ListenerList);

 return s;
}
