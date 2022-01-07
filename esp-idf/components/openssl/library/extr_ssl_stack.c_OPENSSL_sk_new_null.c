
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_sk_compfunc ;
typedef int OPENSSL_STACK ;


 int * OPENSSL_sk_new (int ) ;

OPENSSL_STACK *OPENSSL_sk_new_null(void)
{
    return OPENSSL_sk_new((OPENSSL_sk_compfunc)((void*)0));
}
