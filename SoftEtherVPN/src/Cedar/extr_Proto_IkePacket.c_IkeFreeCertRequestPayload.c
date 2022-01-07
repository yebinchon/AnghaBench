
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Data; } ;
typedef TYPE_1__ IKE_PACKET_CERT_REQUEST_PAYLOAD ;


 int FreeBuf (int *) ;

void IkeFreeCertRequestPayload(IKE_PACKET_CERT_REQUEST_PAYLOAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->Data != ((void*)0))
 {
  FreeBuf(t->Data);
  t->Data = ((void*)0);
 }
}
