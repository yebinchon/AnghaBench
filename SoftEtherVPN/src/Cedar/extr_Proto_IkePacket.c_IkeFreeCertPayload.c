
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * CertData; } ;
typedef TYPE_1__ IKE_PACKET_CERT_PAYLOAD ;


 int FreeBuf (int *) ;

void IkeFreeCertPayload(IKE_PACKET_CERT_PAYLOAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->CertData != ((void*)0))
 {
  FreeBuf(t->CertData);
  t->CertData = ((void*)0);
 }
}
