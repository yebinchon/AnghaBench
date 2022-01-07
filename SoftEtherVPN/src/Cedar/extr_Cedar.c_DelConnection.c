
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ConnectionList; } ;
struct TYPE_7__ {int Name; } ;
typedef TYPE_1__ CONNECTION ;
typedef TYPE_2__ CEDAR ;


 int Debug (char*,int ) ;
 scalar_t__ Delete (int ,TYPE_1__*) ;
 int LockList (int ) ;
 int ReleaseConnection (TYPE_1__*) ;
 int UnlockList (int ) ;

void DelConnection(CEDAR *cedar, CONNECTION *c)
{

 if (cedar == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 LockList(cedar->ConnectionList);
 {
  Debug("Connection %s Deleted from Cedar.\n", c->Name);
  if (Delete(cedar->ConnectionList, c))
  {
   ReleaseConnection(c);
  }
 }
 UnlockList(cedar->ConnectionList);
}
