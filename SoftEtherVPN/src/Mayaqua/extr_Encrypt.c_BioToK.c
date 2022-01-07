
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pem_password_cb ;
struct TYPE_8__ {char* password; } ;
struct TYPE_7__ {int private_key; int * pkey; } ;
typedef TYPE_1__ K ;
typedef int EVP_PKEY ;
typedef TYPE_2__ CB_PARAM ;
typedef int BIO ;


 int Lock (int ) ;
 int * PEM_read_bio_PUBKEY (int *,int *,int *,TYPE_2__*) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,TYPE_2__*) ;
 scalar_t__ PKeyPasswordCallbackFunction ;
 scalar_t__ StrLen (char*) ;
 int Unlock (int ) ;
 TYPE_1__* ZeroMalloc (int) ;
 int * d2i_PUBKEY_bio (int *,int *) ;
 int * d2i_PrivateKey_bio (int *,int *) ;
 int openssl_lock ;

K *BioToK(BIO *bio, bool private_key, bool text, char *password)
{
 EVP_PKEY *pkey;
 K *k;

 if (bio == ((void*)0))
 {
  return ((void*)0);
 }

 if (password != ((void*)0) && StrLen(password) == 0)
 {
  password = ((void*)0);
 }

 if (private_key == 0)
 {

  if (text == 0)
  {

   pkey = d2i_PUBKEY_bio(bio, ((void*)0));
   if (pkey == ((void*)0))
   {
    return ((void*)0);
   }
  }
  else
  {

   CB_PARAM cb;
   cb.password = password;
   Lock(openssl_lock);
   {
    pkey = PEM_read_bio_PUBKEY(bio, ((void*)0), (pem_password_cb *)PKeyPasswordCallbackFunction, &cb);
   }
   Unlock(openssl_lock);
   if (pkey == ((void*)0))
   {
    return ((void*)0);
   }
  }
 }
 else
 {
  if (text == 0)
  {

   Lock(openssl_lock);
   {
    pkey = d2i_PrivateKey_bio(bio, ((void*)0));
   }
   Unlock(openssl_lock);
   if (pkey == ((void*)0))
   {
    return ((void*)0);
   }
  }
  else
  {

   CB_PARAM cb;
   cb.password = password;
   Lock(openssl_lock);
   {
    pkey = PEM_read_bio_PrivateKey(bio, ((void*)0), (pem_password_cb *)PKeyPasswordCallbackFunction, &cb);
   }
   Unlock(openssl_lock);
   if (pkey == ((void*)0))
   {
    return ((void*)0);
   }
  }
 }

 k = ZeroMalloc(sizeof(K));
 k->pkey = pkey;
 k->private_key = private_key;

 return k;
}
