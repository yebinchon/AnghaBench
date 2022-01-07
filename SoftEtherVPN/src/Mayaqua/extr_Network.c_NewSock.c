
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* disconnect_lock; void* ssl_lock; int socket; int SendBuf; void* lock; int ref; } ;
typedef TYPE_1__ SOCK ;


 int INVALID_SOCKET ;
 int Inc (int ) ;
 int NewBuf () ;
 void* NewLock () ;
 int NewRef () ;
 TYPE_1__* ZeroMallocFast (int) ;
 int num_tcp_connections ;

SOCK *NewSock()
{
 SOCK *s = ZeroMallocFast(sizeof(SOCK));

 s->ref = NewRef();
 s->lock = NewLock();
 s->SendBuf = NewBuf();
 s->socket = INVALID_SOCKET;
 s->ssl_lock = NewLock();
 s->disconnect_lock = NewLock();

 Inc(num_tcp_connections);

 return s;
}
