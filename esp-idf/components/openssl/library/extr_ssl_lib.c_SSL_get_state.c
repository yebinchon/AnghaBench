
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int OSSL_HANDSHAKE_STATE ;


 int SSL_ASSERT1 (int const*) ;
 int SSL_METHOD_CALL (int ,int const*) ;
 int get_state ;

OSSL_HANDSHAKE_STATE SSL_get_state(const SSL *ssl)
{
    OSSL_HANDSHAKE_STATE state;

    SSL_ASSERT1(ssl);

    state = SSL_METHOD_CALL(get_state, ssl);

    return state;
}
