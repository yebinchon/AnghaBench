
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
typedef int UINT ;
struct TYPE_7__ {int ConnectionList; int ConnectionIncrement; } ;
struct TYPE_6__ {int Name; int ref; int lock; } ;
typedef TYPE_1__ CONNECTION ;
typedef TYPE_2__ CEDAR ;


 int Add (int ,TYPE_1__*) ;
 int AddRef (int ) ;
 int CopyStr (char*) ;
 int Debug (char*,int ) ;
 int Format (char*,int,char*,int ) ;
 int Free (int ) ;
 int Inc (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void AddConnection(CEDAR *cedar, CONNECTION *c)
{
 char tmp[MAX_SIZE];
 UINT i;

 if (cedar == ((void*)0) || c == ((void*)0))
 {
  return;
 }


 i = Inc(cedar->ConnectionIncrement);
 Format(tmp, sizeof(tmp), "CID-%u", i);


 Lock(c->lock);
 {
  Free(c->Name);
  c->Name = CopyStr(tmp);
 }
 Unlock(c->lock);

 LockList(cedar->ConnectionList);
 {
  Add(cedar->ConnectionList, c);
  AddRef(c->ref);
  Debug("Connection %s Inserted to Cedar.\n", c->Name);
 }
 UnlockList(cedar->ConnectionList);
}
