
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ref_counter; int method; } ;
typedef TYPE_1__ X509 ;


 int SSL_DEBUG (int ,char*,...) ;
 int SSL_PKEY_ERROR_LEVEL ;
 int SSL_X509_ERROR_LEVEL ;
 int X509_METHOD_CALL (int ,TYPE_1__*,TYPE_1__*) ;
 int X509_method () ;
 int new ;
 int ssl_mem_free (TYPE_1__*) ;
 TYPE_1__* ssl_mem_zalloc (int) ;

X509* __X509_new(X509 *ix)
{
    int ret;
    X509 *x;

    x = ssl_mem_zalloc(sizeof(X509));
    if (!x) {
        SSL_DEBUG(SSL_X509_ERROR_LEVEL, "no enough memory > (x)");
        goto no_mem;
    }

    x->ref_counter = 1;

    if (ix)
        x->method = ix->method;
    else
        x->method = X509_method();

    ret = X509_METHOD_CALL(new, x, ix);
    if (ret) {
        SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "X509_METHOD_CALL(new) return %d", ret);
        goto failed;
    }

    return x;

failed:
    ssl_mem_free(x);
no_mem:
    return ((void*)0);
}
