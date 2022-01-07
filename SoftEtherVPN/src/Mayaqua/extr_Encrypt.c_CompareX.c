
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x509; } ;
typedef TYPE_1__ X ;


 int Lock (int ) ;
 int Unlock (int ) ;
 scalar_t__ X509_cmp (int ,int ) ;
 int openssl_lock ;

bool CompareX(X *x1, X *x2)
{

 if (x1 == ((void*)0) || x2 == ((void*)0))
 {
  return 0;
 }

 Lock(openssl_lock);
 if (X509_cmp(x1->x509, x2->x509) == 0)
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
