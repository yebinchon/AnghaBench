
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int X ;
typedef int BIO ;


 int Lock (int ) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int Unlock (int ) ;
 int * X509ToX (int *) ;
 int * d2i_X509_bio (int *,int *) ;
 int openssl_lock ;

X *BioToX(BIO *bio, bool text)
{
 X *x;
 X509 *x509;

 if (bio == ((void*)0))
 {
  return ((void*)0);
 }

 Lock(openssl_lock);
 {

  if (text == 0)
  {

   x509 = d2i_X509_bio(bio, ((void*)0));
  }
  else
  {

   x509 = PEM_read_bio_X509(bio, ((void*)0), ((void*)0), ((void*)0));
  }
 }
 Unlock(openssl_lock);

 if (x509 == ((void*)0))
 {
  return ((void*)0);
 }

 x = X509ToX(x509);

 if (x == ((void*)0))
 {
  return ((void*)0);
 }

 return x;
}
