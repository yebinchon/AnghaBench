
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h ;
struct TYPE_7__ {int CertType; } ;
struct TYPE_6__ {int Data; int CertType; } ;
typedef TYPE_1__ IKE_PACKET_CERT_REQUEST_PAYLOAD ;
typedef TYPE_2__ IKE_CERT_REQUEST_HEADER ;
typedef int BUF ;


 int * NewBuf () ;
 int WriteBuf (int *,TYPE_2__*,int) ;
 int WriteBufBuf (int *,int ) ;
 int Zero (TYPE_2__*,int) ;

BUF *IkeBuildCertRequestPayload(IKE_PACKET_CERT_REQUEST_PAYLOAD *t)
{
 IKE_CERT_REQUEST_HEADER h;
 BUF *ret;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));
 h.CertType = t->CertType;

 ret = NewBuf();
 WriteBuf(ret, &h, sizeof(h));
 WriteBufBuf(ret, t->Data);

 return ret;
}
