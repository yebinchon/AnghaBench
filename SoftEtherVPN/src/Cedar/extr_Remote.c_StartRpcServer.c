
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ServerMode; int Name; int * Dispatch; int Lock; void* Param; TYPE_1__* Sock; } ;
struct TYPE_6__ {int socket; int ref; } ;
typedef TYPE_1__ SOCK ;
typedef int RPC_DISPATCHER ;
typedef TYPE_2__ RPC ;


 int AddRef (int ) ;
 int Format (int ,int,char*,int ) ;
 int NewLock () ;
 TYPE_2__* ZeroMallocEx (int,int) ;

RPC *StartRpcServer(SOCK *s, RPC_DISPATCHER *dispatch, void *param)
{
 RPC *r;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 r = ZeroMallocEx(sizeof(RPC), 1);
 r->Sock = s;
 r->Param = param;
 r->Lock = NewLock();
 AddRef(s->ref);

 r->ServerMode = 1;
 r->Dispatch = dispatch;


 Format(r->Name, sizeof(r->Name), "RPC-%u", s->socket);

 return r;
}
