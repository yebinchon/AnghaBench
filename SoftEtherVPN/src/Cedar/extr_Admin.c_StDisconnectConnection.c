
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int tt ;
typedef int UINT ;
struct TYPE_18__ {TYPE_1__* Server; } ;
struct TYPE_17__ {int ConnectionList; } ;
struct TYPE_16__ {int ref; int Name; } ;
struct TYPE_15__ {int Name; } ;
struct TYPE_14__ {TYPE_4__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_DISCONNECT_CONNECTION ;
typedef TYPE_3__ CONNECTION ;
typedef TYPE_4__ CEDAR ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,int *,char*,int ) ;
 int AddRef (int ) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 scalar_t__ IsEmptyStr (int ) ;
 int LockList (int ) ;
 int ReleaseConnection (TYPE_3__*) ;
 int SERVER_ADMIN_ONLY ;
 TYPE_3__* Search (int ,TYPE_3__*) ;
 int StopConnection (TYPE_3__*,int) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;

UINT StDisconnectConnection(ADMIN *a, RPC_DISCONNECT_CONNECTION *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 CONNECTION *connection;

 if (IsEmptyStr(t->Name))
 {
  return ERR_INVALID_PARAMETER;
 }

 SERVER_ADMIN_ONLY;

 LockList(c->ConnectionList);
 {
  CONNECTION tt;
  Zero(&tt, sizeof(tt));
  tt.Name = t->Name;

  connection = Search(c->ConnectionList, &tt);
  if (connection != ((void*)0))
  {
   AddRef(connection->ref);
  }
 }
 UnlockList(c->ConnectionList);

 if (connection == ((void*)0))
 {
  return ERR_OBJECT_NOT_FOUND;
 }

 StopConnection(connection, 1);

 ReleaseConnection(connection);

 ALog(a, ((void*)0), "LA_DISCONNECT_CONN", t->Name);

 return ERR_NO_ERROR;
}
