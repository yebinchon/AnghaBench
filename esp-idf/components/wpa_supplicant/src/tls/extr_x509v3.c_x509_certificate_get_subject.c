
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_name {int dummy; } ;
struct x509_certificate {int subject; struct x509_certificate* next; } ;


 scalar_t__ x509_name_compare (int *,struct x509_name*) ;

struct x509_certificate *
x509_certificate_get_subject(struct x509_certificate *chain,
        struct x509_name *name)
{
 struct x509_certificate *cert;

 for (cert = chain; cert; cert = cert->next) {
  if (x509_name_compare(&cert->subject, name) == 0)
   return cert;
 }
 return ((void*)0);
}
