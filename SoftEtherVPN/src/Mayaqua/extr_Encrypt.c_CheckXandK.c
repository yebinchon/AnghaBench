
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x509; } ;
typedef TYPE_1__ X ;
struct TYPE_6__ {int pkey; } ;
typedef TYPE_2__ K ;


 int Lock (int ) ;
 int Unlock (int ) ;
 scalar_t__ X509_check_private_key (int ,int ) ;
 int openssl_lock ;

bool CheckXandK(X *x, K *k)
{

 if (x == ((void*)0) || k == ((void*)0))
 {
  return 0;
 }

 Lock(openssl_lock);
 if (X509_check_private_key(x->x509, k->pkey) != 0)
 {
  Unlock(openssl_lock);
  return 1;
 }
 else
 {
  Unlock(openssl_lock);
  return 0;
 }
}
