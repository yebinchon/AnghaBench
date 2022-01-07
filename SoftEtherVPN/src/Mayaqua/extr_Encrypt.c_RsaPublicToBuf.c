
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* rsa; } ;
struct TYPE_9__ {TYPE_2__ pkey; } ;
struct TYPE_8__ {TYPE_5__* pkey; } ;
struct TYPE_6__ {int const* n; } ;
typedef int RSA ;
typedef TYPE_3__ K ;
typedef int BUF ;
typedef int BIGNUM ;


 int * BigNumToBuf (int const*) ;
 int * EVP_PKEY_get0_RSA (TYPE_5__*) ;
 int RSA_get0_key (int *,int const**,int *,int *) ;

BUF *RsaPublicToBuf(K *k)
{
 BUF *b;





 if (k == ((void*)0) || k->pkey == ((void*)0))
 {
  return ((void*)0);
 }
 if (k->pkey->pkey.rsa == ((void*)0) || k->pkey->pkey.rsa->n == ((void*)0))
 {
  return ((void*)0);
 }

 b = BigNumToBuf(k->pkey->pkey.rsa->n);


 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 return b;
}
