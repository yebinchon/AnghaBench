
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {void* subject_name; void* issuer_name; int * x509; } ;
typedef TYPE_1__ X ;


 void* X509NameToName (int ) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_subject_name (int *) ;

void LoadXNames(X *x)
{
 X509 *x509;

 if (x == ((void*)0))
 {
  return;
 }

 x509 = x->x509;
 x->issuer_name = X509NameToName(X509_get_issuer_name(x509));
 x->subject_name = X509NameToName(X509_get_subject_name(x509));
}
