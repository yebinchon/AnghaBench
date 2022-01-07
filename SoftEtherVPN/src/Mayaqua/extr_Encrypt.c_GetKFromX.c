
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int x509; } ;
typedef TYPE_1__ X ;
struct TYPE_7__ {int * pkey; } ;
typedef TYPE_2__ K ;
typedef int EVP_PKEY ;


 int Lock (int ) ;
 int Unlock (int ) ;
 int * X509_get_pubkey (int ) ;
 TYPE_2__* ZeroMalloc (int) ;
 int openssl_lock ;

K *GetKFromX(X *x)
{
 EVP_PKEY *pkey;
 K *k;

 if (x == ((void*)0))
 {
  return ((void*)0);
 }

 Lock(openssl_lock);
 {
  pkey = X509_get_pubkey(x->x509);
 }
 Unlock(openssl_lock);
 if (pkey == ((void*)0))
 {
  return ((void*)0);
 }

 k = ZeroMalloc(sizeof(K));
 k->pkey = pkey;

 return k;
}
