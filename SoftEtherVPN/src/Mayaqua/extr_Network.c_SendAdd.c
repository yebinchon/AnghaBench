
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int AsyncMode; int SendBuf; } ;
typedef TYPE_1__ SOCK ;


 int WriteBuf (int ,void*,scalar_t__) ;

void SendAdd(SOCK *sock, void *data, UINT size)
{

 if (sock == ((void*)0) || data == ((void*)0) || size == 0 || sock->AsyncMode != 0)
 {
  return;
 }

 WriteBuf(sock->SendBuf, data, size);
}
