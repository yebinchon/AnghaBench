
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_SSL_HANDSHAKE_OVER ;
 int SSL_DEBUG (int ,char*,int,int ) ;
 int SSL_PLATFORM_DEBUG_LEVEL ;
 int mbedtls_ssl_handshake_step (TYPE_1__*) ;

__attribute__((used)) static int mbedtls_handshake( mbedtls_ssl_context *ssl )
{
    int ret = 0;

    while (ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER) {
        ret = mbedtls_ssl_handshake_step(ssl);

        SSL_DEBUG(SSL_PLATFORM_DEBUG_LEVEL, "ssl ret %d state %d", ret, ssl->state);

        if (ret != 0)
            break;
    }

    return ret;
}
