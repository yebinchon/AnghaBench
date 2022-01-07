
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pkcs12; } ;
typedef TYPE_1__ P12 ;
typedef int BIO ;


 int Lock (int ) ;
 int * NewBio () ;
 int Unlock (int ) ;
 int i2d_PKCS12_bio (int *,int ) ;
 int openssl_lock ;

BIO *P12ToBio(P12 *p12)
{
 BIO *bio;

 if (p12 == ((void*)0))
 {
  return ((void*)0);
 }

 bio = NewBio();
 Lock(openssl_lock);
 {
  i2d_PKCS12_bio(bio, p12->pkcs12);
 }
 Unlock(openssl_lock);

 return bio;
}
