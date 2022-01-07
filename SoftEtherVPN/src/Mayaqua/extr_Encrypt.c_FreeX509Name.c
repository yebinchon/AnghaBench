
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;


 int X509_NAME_free (int *) ;

void FreeX509Name(void *xn)
{
 X509_NAME *x509_name;

 if (xn == ((void*)0))
 {
  return;
 }

 x509_name = (X509_NAME *)xn;
 X509_NAME_free(x509_name);
}
