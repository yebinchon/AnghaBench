
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ Type; int Connected; int SendTube; scalar_t__ Disconnecting; } ;
typedef TYPE_1__ SOCK ;


 int IsTubeConnected (int ) ;
 scalar_t__ SOCK_INPROC ;
 int TubeSend (int ,void*,int ,int *) ;

UINT SendInProc(SOCK *sock, void *data, UINT size)
{
 if (sock == ((void*)0) || sock->Type != SOCK_INPROC || sock->Disconnecting || sock->Connected == 0)
 {
  return 0;
 }

 if (IsTubeConnected(sock->SendTube) == 0)
 {
  return 0;
 }

 if (TubeSend(sock->SendTube, data, size, ((void*)0)) == 0)
 {
  return 0;
 }

 return size;
}
