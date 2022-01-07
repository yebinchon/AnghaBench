
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_4__ {scalar_t__ AsyncMode; } ;
typedef TYPE_1__ SOCK ;


 scalar_t__ Send (TYPE_1__*,int *,scalar_t__,int) ;

bool SendAll(SOCK *sock, void *data, UINT size, bool secure)
{
 UCHAR *buf;
 UINT sent_size;
 UINT ret;

 if (sock == ((void*)0) || data == ((void*)0))
 {
  return 0;
 }
 if (sock->AsyncMode)
 {
  return 0;
 }
 if (size == 0)
 {
  return 1;
 }

 buf = (UCHAR *)data;
 sent_size = 0;

 while (1)
 {
  ret = Send(sock, buf, size - sent_size, secure);
  if (ret == 0)
  {
   return 0;
  }
  sent_size += ret;
  buf += ret;
  if (sent_size >= size)
  {
   return 1;
  }
 }
}
