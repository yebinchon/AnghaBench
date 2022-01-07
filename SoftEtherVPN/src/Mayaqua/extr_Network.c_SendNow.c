
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Size; int Buf; } ;
struct TYPE_5__ {int AsyncMode; TYPE_4__* SendBuf; } ;
typedef TYPE_1__ SOCK ;


 int ClearBuf (TYPE_4__*) ;
 int SendAll (TYPE_1__*,int ,scalar_t__,int) ;

bool SendNow(SOCK *sock, int secure)
{
 bool ret;

 if (sock == ((void*)0) || sock->AsyncMode != 0)
 {
  return 0;
 }
 if (sock->SendBuf->Size == 0)
 {
  return 1;
 }

 ret = SendAll(sock, sock->SendBuf->Buf, sock->SendBuf->Size, secure);
 ClearBuf(sock->SendBuf);

 return ret;
}
