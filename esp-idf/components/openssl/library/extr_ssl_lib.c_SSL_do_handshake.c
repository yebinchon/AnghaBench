
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int *) ;
 int SSL_METHOD_CALL (int ,int *) ;
 int handshake ;

int SSL_do_handshake(SSL *ssl)
{
    int ret;

    SSL_ASSERT1(ssl);

    ret = SSL_METHOD_CALL(handshake, ssl);

    return ret;
}
