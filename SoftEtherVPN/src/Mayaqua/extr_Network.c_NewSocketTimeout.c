
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ TimeOut; int AsyncMode; } ;
struct TYPE_6__ {int unblocked; int thread; TYPE_2__* sock; int cancel; } ;
typedef TYPE_1__ SOCKET_TIMEOUT_PARAM ;
typedef TYPE_2__ SOCK ;


 scalar_t__ Malloc (int) ;
 int NewCancel () ;
 int NewThread (int ,TYPE_1__*) ;
 int SocketTimeoutThread ;
 scalar_t__ TIMEOUT_INFINITE ;

SOCKET_TIMEOUT_PARAM *NewSocketTimeout(SOCK *sock)
{
 SOCKET_TIMEOUT_PARAM *ttp;
 if(! sock->AsyncMode && sock->TimeOut != TIMEOUT_INFINITE)
 {


  ttp = (SOCKET_TIMEOUT_PARAM*)Malloc(sizeof(SOCKET_TIMEOUT_PARAM));


  ttp->cancel = NewCancel();
  ttp->sock = sock;
  ttp->unblocked = 0;
  ttp->thread = NewThread(SocketTimeoutThread, ttp);
  return ttp;
 }
 return ((void*)0);
}
