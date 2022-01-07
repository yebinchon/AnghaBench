
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_certificate {int subject; int issuer; } ;


 scalar_t__ x509_name_compare (int *,int *) ;

int x509_certificate_self_signed(struct x509_certificate *cert)
{
 return x509_name_compare(&cert->issuer, &cert->subject) == 0;
}
