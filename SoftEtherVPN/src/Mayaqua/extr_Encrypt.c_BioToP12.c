
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS12 ;
typedef int P12 ;
typedef int BIO ;


 int Lock (int ) ;
 int * PKCS12ToP12 (int *) ;
 int Unlock (int ) ;
 int * d2i_PKCS12_bio (int *,int *) ;
 int openssl_lock ;

P12 *BioToP12(BIO *bio)
{
 PKCS12 *pkcs12;

 if (bio == ((void*)0))
 {
  return ((void*)0);
 }


 Lock(openssl_lock);
 {
  pkcs12 = d2i_PKCS12_bio(bio, ((void*)0));
 }
 Unlock(openssl_lock);
 if (pkcs12 == ((void*)0))
 {

  return ((void*)0);
 }

 return PKCS12ToP12(pkcs12);
}
