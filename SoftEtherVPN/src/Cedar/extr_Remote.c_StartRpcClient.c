
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ServerMode; int Lock; void* Param; TYPE_1__* Sock; } ;
struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ RPC ;


 int AddRef (int ) ;
 int NewLock () ;
 TYPE_2__* ZeroMalloc (int) ;

RPC *StartRpcClient(SOCK *s, void *param)
{
 RPC *r;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 r = ZeroMalloc(sizeof(RPC));
 r->Sock = s;
 r->Param = param;
 r->Lock = NewLock();
 AddRef(s->ref);

 r->ServerMode = 0;

 return r;
}
