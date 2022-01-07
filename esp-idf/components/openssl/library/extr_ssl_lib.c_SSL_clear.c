
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int *) ;
 int SSL_DEBUG (int ,char*,int) ;
 int SSL_LIB_ERROR_LEVEL ;
 int SSL_METHOD_CALL (int ,int *) ;
 int SSL_shutdown (int *) ;
 int free ;
 int new ;

int SSL_clear(SSL *ssl)
{
    int ret;

    SSL_ASSERT1(ssl);

    ret = SSL_shutdown(ssl);
    if (1 != ret) {
        SSL_DEBUG(SSL_LIB_ERROR_LEVEL, "SSL_shutdown return %d", ret);
        goto failed1;
    }

    SSL_METHOD_CALL(free, ssl);

    ret = SSL_METHOD_CALL(new, ssl);
    if (!ret) {
        SSL_DEBUG(SSL_LIB_ERROR_LEVEL, "SSL_METHOD_CALL(new) return %d", ret);
        goto failed1;
    }

    return 1;

failed1:
    return ret;
}
