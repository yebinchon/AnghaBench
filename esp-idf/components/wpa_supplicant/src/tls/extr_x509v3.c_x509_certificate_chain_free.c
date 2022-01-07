
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_certificate {struct x509_certificate* next; } ;


 int x509_certificate_free (struct x509_certificate*) ;

void x509_certificate_chain_free(struct x509_certificate *cert)
{
 struct x509_certificate *next;

 while (cert) {
  next = cert->next;
  cert->next = ((void*)0);
  x509_certificate_free(cert);
  cert = next;
 }
}
