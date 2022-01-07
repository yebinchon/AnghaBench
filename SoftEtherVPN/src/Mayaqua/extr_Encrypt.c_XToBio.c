
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x509; } ;
typedef TYPE_1__ X ;
typedef int BIO ;


 int Lock (int ) ;
 int * NewBio () ;
 int PEM_write_bio_X509 (int *,int ) ;
 int Unlock (int ) ;
 int i2d_X509_bio (int *,int ) ;
 int openssl_lock ;

BIO *XToBio(X *x, bool text)
{
 BIO *bio;

 if (x == ((void*)0))
 {
  return ((void*)0);
 }

 bio = NewBio();

 Lock(openssl_lock);
 {
  if (text == 0)
  {

   i2d_X509_bio(bio, x->x509);
  }
  else
  {

   PEM_write_bio_X509(bio, x->x509);
  }
 }
 Unlock(openssl_lock);

 return bio;
}
