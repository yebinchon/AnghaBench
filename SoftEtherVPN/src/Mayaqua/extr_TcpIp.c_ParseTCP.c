
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int * TCPHeader; } ;
struct TYPE_5__ {int PayloadSize; int * Payload; int TypeL4; TYPE_1__ L4; } ;
typedef int TCP_HEADER ;
typedef TYPE_2__ PKT ;


 int L4_TCP ;
 int L4_UNKNOWN ;
 int TCP_GET_HEADER_SIZE (int *) ;

bool ParseTCP(PKT *p, UCHAR *buf, UINT size)
{
 UINT header_size;

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 if (size < sizeof(TCP_HEADER))
 {

  return 0;
 }


 p->L4.TCPHeader = (TCP_HEADER *)buf;
 p->TypeL4 = L4_TCP;


 header_size = TCP_GET_HEADER_SIZE(p->L4.TCPHeader) * 4;
 if (header_size < sizeof(TCP_HEADER) || size < header_size)
 {

  p->L4.TCPHeader = ((void*)0);
  p->TypeL4 = L4_UNKNOWN;
  return 1;
 }

 buf += header_size;
 size -= header_size;

 p->Payload = buf;
 p->PayloadSize = size;

 return 1;
}
