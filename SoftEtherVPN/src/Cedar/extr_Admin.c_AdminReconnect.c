
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_17__ {int ref; } ;
struct TYPE_16__ {int IsVpnServer; TYPE_2__* Sock; TYPE_3__* Param; int VpnServerHashedPassword; int VpnServerClientName; int VpnServerHubName; int VpnServerClientOption; } ;
struct TYPE_15__ {TYPE_1__* Connection; TYPE_5__* Cedar; } ;
struct TYPE_14__ {int ref; } ;
struct TYPE_13__ {TYPE_2__* FirstSock; } ;
typedef TYPE_2__ SOCK ;
typedef TYPE_3__ SESSION ;
typedef TYPE_4__ RPC ;
typedef TYPE_5__ CEDAR ;


 int AddRef (int ) ;
 TYPE_3__* AdminConnectMain (TYPE_5__*,int *,int ,int ,int *,int ,int *,int*) ;
 int Disconnect (TYPE_2__*) ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NO_ERROR ;
 int HashAdminPassword (int ,char*) ;
 int ReleaseCedar (TYPE_5__*) ;
 int ReleaseSession (TYPE_3__*) ;
 int ReleaseSock (TYPE_2__*) ;

UINT AdminReconnect(RPC *rpc)
{
 SESSION *s;
 SOCK *sock;
 CEDAR *cedar;
 UINT err;
 bool empty_password = 0;

 if (rpc == ((void*)0) || rpc->IsVpnServer == 0)
 {
  return ERR_INTERNAL_ERROR;
 }

 s = (SESSION *)rpc->Param;
 cedar = s->Cedar;
 AddRef(cedar->ref);

 sock = rpc->Sock;
 Disconnect(sock);
 ReleaseSock(sock);
 ReleaseSession(s);
 rpc->Param = ((void*)0);

 rpc->Sock = ((void*)0);

 s = AdminConnectMain(cedar, &rpc->VpnServerClientOption,
  rpc->VpnServerHubName,
  rpc->VpnServerHashedPassword,
  &err,
  rpc->VpnServerClientName, ((void*)0), &empty_password);

 ReleaseCedar(cedar);

 if (s == ((void*)0))
 {
  return err;
 }

 if (empty_password)
 {
  HashAdminPassword(rpc->VpnServerHashedPassword, "");
 }

 rpc->Param = s;
 rpc->Sock = s->Connection->FirstSock;
 AddRef(rpc->Sock->ref);

 return ERR_NO_ERROR;
}
