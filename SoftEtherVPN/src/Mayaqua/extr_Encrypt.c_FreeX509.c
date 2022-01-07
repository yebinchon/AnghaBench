
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int Lock (int ) ;
 int Unlock (int ) ;
 int X509_free (int *) ;
 int openssl_lock ;

void FreeX509(X509 *x509)
{

 if (x509 == ((void*)0))
 {
  return;
 }

 Lock(openssl_lock);
 {
  X509_free(x509);
 }
 Unlock(openssl_lock);
}
