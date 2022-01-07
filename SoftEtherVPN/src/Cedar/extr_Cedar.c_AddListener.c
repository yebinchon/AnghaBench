
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ListenerList; } ;
struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ LISTENER ;
typedef TYPE_2__ CEDAR ;


 int Add (int ,TYPE_1__*) ;
 int AddRef (int ) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void AddListener(CEDAR *c, LISTENER *r)
{

 if (c == ((void*)0) || r == ((void*)0))
 {
  return;
 }

 LockList(c->ListenerList);
 {
  Add(c->ListenerList, r);
  AddRef(r->ref);
 }
 UnlockList(c->ListenerList);
}
