
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ minor_ver; TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_4__ {int calc_verify; } ;


 int MBEDTLS_ERR_SSL_INVALID_VERIFY_HASH ;




 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 int ssl_calc_verify_tls ;
 int ssl_calc_verify_tls_sha256 ;
 int ssl_calc_verify_tls_sha384 ;

int mbedtls_ssl_set_calc_verify_md( mbedtls_ssl_context *ssl, int md )
{
    (void) ssl;
    (void) md;

    return MBEDTLS_ERR_SSL_INVALID_VERIFY_HASH;

}
