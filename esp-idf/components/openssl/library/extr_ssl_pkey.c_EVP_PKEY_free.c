
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int EVP_PKEY_METHOD_CALL (int ,int *) ;
 int SSL_ASSERT3 (int *) ;
 int free ;
 int ssl_mem_free (int *) ;

void EVP_PKEY_free(EVP_PKEY *pkey)
{
    SSL_ASSERT3(pkey);

    EVP_PKEY_METHOD_CALL(free, pkey);

    ssl_mem_free(pkey);
}
