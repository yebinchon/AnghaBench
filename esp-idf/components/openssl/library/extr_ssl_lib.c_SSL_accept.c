
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int *) ;
 int SSL_do_handshake (int *) ;

int SSL_accept(SSL *ssl)
{
    SSL_ASSERT1(ssl);

    return SSL_do_handshake(ssl);
}
