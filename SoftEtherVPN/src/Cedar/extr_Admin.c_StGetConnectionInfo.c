
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tt ;
typedef int name ;
typedef int UINT ;
struct TYPE_17__ {TYPE_2__* Server; } ;
struct TYPE_16__ {int ConnectionList; } ;
struct TYPE_15__ {char* Name; char* Hostname; char* ServerStr; char* ClientStr; int lock; int ClientBuild; int ClientVer; int ServerBuild; int ServerVer; int Type; int ConnectedTick; int ConnectedTime; int Port; int Ip; TYPE_1__* FirstSock; int ref; } ;
struct TYPE_14__ {TYPE_5__* Cedar; } ;
struct TYPE_13__ {char* RemoteHostname; int RemotePort; int RemoteIP; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_CONNECTION_INFO ;
typedef TYPE_3__ CONNECTION ;
typedef TYPE_5__ CEDAR ;
typedef TYPE_6__ ADMIN ;


 int AddRef (int ) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int IPToUINT (int *) ;
 scalar_t__ IsEmptyStr (char*) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int MAX_CONNECTION_NAME_LEN ;
 int ReleaseConnection (TYPE_3__*) ;
 int SERVER_ADMIN_ONLY ;
 TYPE_3__* Search (int ,TYPE_3__*) ;
 int StrCpy (char*,int,char*) ;
 int TickToTime (int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;

UINT StGetConnectionInfo(ADMIN *a, RPC_CONNECTION_INFO *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 CONNECTION *connection;
 char name[MAX_CONNECTION_NAME_LEN + 1];

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
  StrCpy(name, sizeof(name), t->Name);

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

 Zero(t, sizeof(RPC_CONNECTION_INFO));
 StrCpy(t->Name, sizeof(t->Name), name);

 Lock(connection->lock);
 {
  SOCK *s = connection->FirstSock;

  if (s != ((void*)0))
  {
   t->Ip = IPToUINT(&s->RemoteIP);
   t->Port = s->RemotePort;
   StrCpy(t->Hostname, sizeof(t->Hostname), s->RemoteHostname);
  }

  StrCpy(t->Name, sizeof(t->Name), connection->Name);
  t->ConnectedTime = TickToTime(connection->ConnectedTick);
  t->Type = connection->Type;

  StrCpy(t->ServerStr, sizeof(t->ServerStr), connection->ServerStr);
  StrCpy(t->ClientStr, sizeof(t->ClientStr), connection->ClientStr);
  t->ServerVer = connection->ServerVer;
  t->ServerBuild = connection->ServerBuild;
  t->ClientVer = connection->ClientVer;
  t->ClientBuild = connection->ClientBuild;
 }
 Unlock(connection->lock);

 ReleaseConnection(connection);

 return ERR_NO_ERROR;
}
