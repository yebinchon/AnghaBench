
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pem_password_cb ;
struct TYPE_6__ {char* password; } ;
struct TYPE_5__ {int pkey; scalar_t__ private_key; } ;
typedef TYPE_1__ K ;
typedef TYPE_2__ CB_PARAM ;
typedef int BIO ;


 int * EVP_des_ede3_cbc () ;
 int Lock (int ) ;
 int * NewBio () ;
 int PEM_write_bio_PUBKEY (int *,int ) ;
 int PEM_write_bio_PrivateKey (int *,int ,int *,int *,int ,int *,TYPE_2__*) ;
 scalar_t__ PKeyPasswordCallbackFunction ;
 scalar_t__ StrLen (char*) ;
 int Unlock (int ) ;
 int i2d_PUBKEY_bio (int *,int ) ;
 int i2d_PrivateKey_bio (int *,int ) ;
 int openssl_lock ;

BIO *KToBio(K *k, bool text, char *password)
{
 BIO *bio;

 if (k == ((void*)0))
 {
  return ((void*)0);
 }

 bio = NewBio();

 if (k->private_key)
 {

  if (text == 0)
  {

   Lock(openssl_lock);
   {
    i2d_PrivateKey_bio(bio, k->pkey);
   }
   Unlock(openssl_lock);
  }
  else
  {

   if (password == 0 || StrLen(password) == 0)
   {

    Lock(openssl_lock);
    {
     PEM_write_bio_PrivateKey(bio, k->pkey, ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0));
    }
    Unlock(openssl_lock);
   }
   else
   {

    CB_PARAM cb;
    cb.password = password;
    Lock(openssl_lock);
    {
     PEM_write_bio_PrivateKey(bio, k->pkey, EVP_des_ede3_cbc(),
      ((void*)0), 0, (pem_password_cb *)PKeyPasswordCallbackFunction, &cb);
    }
    Unlock(openssl_lock);
   }
  }
 }
 else
 {

  if (text == 0)
  {

   Lock(openssl_lock);
   {
    i2d_PUBKEY_bio(bio, k->pkey);
   }
   Unlock(openssl_lock);
  }
  else
  {

   Lock(openssl_lock);
   {
    PEM_write_bio_PUBKEY(bio, k->pkey);
   }
   Unlock(openssl_lock);
  }
 }

 return bio;
}
