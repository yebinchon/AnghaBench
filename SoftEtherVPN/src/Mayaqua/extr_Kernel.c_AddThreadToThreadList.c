
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref; } ;
typedef TYPE_1__ THREAD ;
typedef int LIST ;


 int Add (int *,TYPE_1__*) ;
 int AddRef (int ) ;
 int IsInList (int *,TYPE_1__*) ;
 int LockList (int *) ;
 int UnlockList (int *) ;

void AddThreadToThreadList(LIST *o, THREAD *t)
{

 if (o == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  if (IsInList(o, t) == 0)
  {
   AddRef(t->ref);

   Add(o, t);
  }
 }
 UnlockList(o);
}
