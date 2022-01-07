
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_4__ {scalar_t__ AsyncMode; } ;
typedef TYPE_1__ SOCK ;


 scalar_t__ Recv (TYPE_1__*,int *,scalar_t__,int) ;
 scalar_t__ SOCK_LATER ;

bool RecvAll(SOCK *sock, void *data, UINT size, bool secure)
{
 UINT recv_size, sz, ret;

 if (sock == ((void*)0) || data == ((void*)0))
 {
  return 0;
 }
 if (size == 0)
 {
  return 1;
 }
 if (sock->AsyncMode)
 {
  return 0;
 }

 recv_size = 0;

 while (1)
 {
  sz = size - recv_size;
  ret = Recv(sock, (UCHAR *)data + recv_size, sz, secure);
  if (ret == 0)
  {
   return 0;
  }
  if (ret == SOCK_LATER)
  {




   return 0;
  }
  recv_size += ret;
  if (recv_size >= size)
  {
   return 1;
  }
 }
}
