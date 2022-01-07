
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sock; int unblocked; int cancel; } ;
struct TYPE_3__ {int socket; int TimeOut; } ;
typedef int THREAD ;
typedef TYPE_2__ SOCKET_TIMEOUT_PARAM ;


 int Select (int *,int ,int ,int *) ;
 int closesocket (int ) ;

void SocketTimeoutThread(THREAD *t, void *param)
{
 SOCKET_TIMEOUT_PARAM *ttparam;
 ttparam = (SOCKET_TIMEOUT_PARAM *)param;


 Select(((void*)0), ttparam->sock->TimeOut, ttparam->cancel, ((void*)0));


 if(! ttparam->unblocked)
 {

  closesocket(ttparam->sock->socket);
 }
 else
 {

 }
}
