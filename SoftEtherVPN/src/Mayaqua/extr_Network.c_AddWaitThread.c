
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ THREAD ;


 int Add (int ,TYPE_1__*) ;
 int AddRef (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;
 int WaitThreadList ;

void AddWaitThread(THREAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 AddRef(t->ref);

 LockList(WaitThreadList);
 {
  Add(WaitThreadList, t);
 }
 UnlockList(WaitThreadList);
}
