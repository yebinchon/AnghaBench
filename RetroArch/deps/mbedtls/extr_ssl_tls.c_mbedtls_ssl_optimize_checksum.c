
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ minor_ver; TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_8__ {scalar_t__ mac; } ;
typedef TYPE_3__ mbedtls_ssl_ciphersuite_t ;
struct TYPE_6__ {int update_checksum; } ;


 scalar_t__ MBEDTLS_MD_SHA384 ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 int ssl_update_checksum_md5sha1 ;
 int ssl_update_checksum_sha256 ;
 int ssl_update_checksum_sha384 ;

void mbedtls_ssl_optimize_checksum( mbedtls_ssl_context *ssl,
                            const mbedtls_ssl_ciphersuite_t *ciphersuite_info )
{
    ((void) ciphersuite_info);
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return;
    }
}
