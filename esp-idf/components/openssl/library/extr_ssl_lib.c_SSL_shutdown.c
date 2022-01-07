
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int *) ;
 int SSL_METHOD_CALL (int ,int *) ;
 scalar_t__ SSL_get_state (int *) ;
 scalar_t__ TLS_ST_OK ;
 int shutdown ;

int SSL_shutdown(SSL *ssl)
{
    int ret;

    SSL_ASSERT1(ssl);

    if (SSL_get_state(ssl) != TLS_ST_OK) return 1;

    ret = SSL_METHOD_CALL(shutdown, ssl);

    return ret;
}
