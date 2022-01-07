
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_20__ {TYPE_2__* Server; } ;
struct TYPE_19__ {int ConnectionList; } ;
struct TYPE_18__ {int lock; int Type; int ConnectedTick; int Name; TYPE_1__* FirstSock; } ;
struct TYPE_17__ {int NumConnection; TYPE_3__* Connections; } ;
struct TYPE_16__ {int Type; int ConnectedTime; int Name; int Hostname; int Port; int Ip; } ;
struct TYPE_15__ {TYPE_6__* Cedar; } ;
struct TYPE_14__ {int RemoteHostname; int RemotePort; int RemoteIP; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_ENUM_CONNECTION_ITEM ;
typedef TYPE_4__ RPC_ENUM_CONNECTION ;
typedef TYPE_5__ CONNECTION ;
typedef TYPE_6__ CEDAR ;
typedef TYPE_7__ ADMIN ;


 size_t ERR_NO_ERROR ;
 int FreeRpcEnumConnection (TYPE_4__*) ;
 int IPToUINT (int *) ;
 TYPE_5__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int SERVER_ADMIN_ONLY ;
 int StrCpy (int ,int,int ) ;
 int TickToTime (int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_4__*,int) ;
 TYPE_3__* ZeroMalloc (int) ;

UINT StEnumConnection(ADMIN *a, RPC_ENUM_CONNECTION *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;

 SERVER_ADMIN_ONLY;

 FreeRpcEnumConnection(t);
 Zero(t, sizeof(RPC_ENUM_CONNECTION));

 LockList(c->ConnectionList);
 {
  UINT i;
  t->NumConnection = LIST_NUM(c->ConnectionList);
  t->Connections = ZeroMalloc(sizeof(RPC_ENUM_CONNECTION_ITEM) * t->NumConnection);

  for (i = 0;i < t->NumConnection;i++)
  {
   RPC_ENUM_CONNECTION_ITEM *e = &t->Connections[i];
   CONNECTION *connection = LIST_DATA(c->ConnectionList, i);

   Lock(connection->lock);
   {
    SOCK *s = connection->FirstSock;

    if (s != ((void*)0))
    {
     e->Ip = IPToUINT(&s->RemoteIP);
     e->Port = s->RemotePort;
     StrCpy(e->Hostname, sizeof(e->Hostname), s->RemoteHostname);
    }

    StrCpy(e->Name, sizeof(e->Name), connection->Name);
    e->ConnectedTime = TickToTime(connection->ConnectedTick);
    e->Type = connection->Type;
   }
   Unlock(connection->lock);
  }
 }
 UnlockList(c->ConnectionList);

 return ERR_NO_ERROR;
}
