
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tmp ;
typedef int rpc_mode ;
typedef int UINT ;
struct TYPE_11__ {int * Sock; } ;
struct TYPE_10__ {TYPE_2__* Rpc; } ;
struct TYPE_9__ {TYPE_1__* Sock; } ;
struct TYPE_8__ {int RemotePort; int RemoteIP; } ;
typedef int SOCK ;
typedef TYPE_3__ REMOTE_CLIENT ;
typedef TYPE_4__ NOTIFY_CLIENT ;


 int * Connect (char*,int ) ;
 int Endian32 (int) ;
 int IPToStr (char*,int,int *) ;
 int MAX_SIZE ;
 int ReleaseSock (int *) ;
 int SendAll (int *,int*,int,int) ;
 TYPE_4__* ZeroMalloc (int) ;

NOTIFY_CLIENT *CcConnectNotify(REMOTE_CLIENT *rc)
{
 NOTIFY_CLIENT *n;
 SOCK *s;
 char tmp[MAX_SIZE];
 bool rpc_mode = 0;
 UINT port;

 if (rc == ((void*)0) || rc->Rpc == ((void*)0) || rc->Rpc->Sock == ((void*)0))
 {
  return ((void*)0);
 }


 IPToStr(tmp, sizeof(tmp), &rc->Rpc->Sock->RemoteIP);
 port = rc->Rpc->Sock->RemotePort;

 s = Connect(tmp, port);
 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 rpc_mode = Endian32(rpc_mode);
 if (SendAll(s, &rpc_mode, sizeof(rpc_mode), 0) == 0)
 {
  ReleaseSock(s);
  return ((void*)0);
 }

 n = ZeroMalloc(sizeof(NOTIFY_CLIENT));
 n->Sock = s;

 return n;
}
