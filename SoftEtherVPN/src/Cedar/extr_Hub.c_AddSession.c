
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int SessionList; int Name; } ;
struct TYPE_7__ {int UniqueId; scalar_t__ InProcMode; int Name; int ref; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ HUB ;


 int AddRef (int ) ;
 int Debug (char*,int ,int ) ;
 int GetNewUniqueId (TYPE_2__*) ;
 int Insert (int ,TYPE_1__*) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void AddSession(HUB *h, SESSION *s)
{

 if (h == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 LockList(h->SessionList);
 {
  Insert(h->SessionList, s);
  AddRef(s->ref);
  Debug("Session %s Inserted to %s.\n", s->Name, h->Name);

  if (s->InProcMode)
  {
   s->UniqueId = GetNewUniqueId(h);
  }
 }
 UnlockList(h->SessionList);
}
