
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int method; } ;
typedef TYPE_1__ EVP_PKEY ;


 int EVP_PKEY_METHOD_CALL (int ,TYPE_1__*,TYPE_1__*) ;
 int EVP_PKEY_method () ;
 int SSL_DEBUG (int ,char*,...) ;
 int SSL_PKEY_ERROR_LEVEL ;
 int new ;
 int ssl_mem_free (TYPE_1__*) ;
 TYPE_1__* ssl_mem_zalloc (int) ;

EVP_PKEY* __EVP_PKEY_new(EVP_PKEY *ipk)
{
    int ret;
    EVP_PKEY *pkey;

    pkey = ssl_mem_zalloc(sizeof(EVP_PKEY));
    if (!pkey) {
        SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "no enough memory > (pkey)");
        goto no_mem;
    }

    if (ipk) {
        pkey->method = ipk->method;
    } else {
        pkey->method = EVP_PKEY_method();
    }

    ret = EVP_PKEY_METHOD_CALL(new, pkey, ipk);
    if (ret) {
        SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "EVP_PKEY_METHOD_CALL(new) return %d", ret);
        goto failed;
    }

    return pkey;

failed:
    ssl_mem_free(pkey);
no_mem:
    return ((void*)0);
}
