
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x509; void* notAfter; void* notBefore; } ;
typedef TYPE_1__ X ;
typedef int ASN1_TIME ;


 void* Asn1TimeToUINT64 (int *) ;
 scalar_t__ X509_get0_notAfter (int ) ;
 scalar_t__ X509_get0_notBefore (int ) ;

void LoadXDates(X *x)
{

 if (x == ((void*)0))
 {
  return;
 }

 x->notBefore = Asn1TimeToUINT64((ASN1_TIME *)X509_get0_notBefore(x->x509));
 x->notAfter = Asn1TimeToUINT64((ASN1_TIME *)X509_get0_notAfter(x->x509));
}
