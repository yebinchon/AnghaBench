
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int ConnectionList; } ;
typedef int CONNECTION ;
typedef TYPE_1__ CEDAR ;


 int DeleteAll (int ) ;
 int Free (int **) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseConnection (int *) ;
 int StopConnection (int *,int) ;
 int ** ToArray (int ) ;
 int UnlockList (int ) ;

void StopAllConnection(CEDAR *c)
{
 UINT num;
 UINT i;
 CONNECTION **connections;

 if (c == ((void*)0))
 {
  return;
 }

 LockList(c->ConnectionList);
 {
  connections = ToArray(c->ConnectionList);
  num = LIST_NUM(c->ConnectionList);
  DeleteAll(c->ConnectionList);
 }
 UnlockList(c->ConnectionList);

 for (i = 0;i < num;i++)
 {
  StopConnection(connections[i], 0);
  ReleaseConnection(connections[i]);
 }
 Free(connections);
}
