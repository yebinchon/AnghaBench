
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int h ;
struct TYPE_6__ {int CertType; } ;
struct TYPE_5__ {int * Data; int CertType; } ;
typedef TYPE_1__ IKE_PACKET_CERT_REQUEST_PAYLOAD ;
typedef TYPE_2__ IKE_CERT_REQUEST_HEADER ;
typedef int BUF ;


 int ReadBuf (int *,TYPE_2__*,int) ;
 int * ReadRemainBuf (int *) ;

bool IkeParseCertRequestPayload(IKE_PACKET_CERT_REQUEST_PAYLOAD *t, BUF *b)
{
 IKE_CERT_REQUEST_HEADER h;

 if (t == ((void*)0) || b == ((void*)0))
 {
  return 0;
 }

 if (ReadBuf(b, &h, sizeof(h)) != sizeof(h))
 {
  return 0;
 }

 t->CertType = h.CertType;
 t->Data = ReadRemainBuf(b);
 if (t->Data == ((void*)0))
 {
  return 0;
 }

 return 1;
}
