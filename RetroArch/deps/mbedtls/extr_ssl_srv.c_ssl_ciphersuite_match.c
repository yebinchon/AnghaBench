
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ minor_ver; TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_16__ {scalar_t__ min_minor_ver; scalar_t__ max_minor_ver; int flags; scalar_t__ cipher; scalar_t__ key_exchange; int name; } ;
typedef TYPE_4__ mbedtls_ssl_ciphersuite_t ;
typedef scalar_t__ mbedtls_pk_type_t ;
struct TYPE_14__ {int cli_exts; int hash_algs; int ** curves; } ;
struct TYPE_13__ {scalar_t__ transport; scalar_t__ arc4_disabled; scalar_t__ psk_identity_len; scalar_t__ psk_len; int * psk_identity; int * psk; int * f_psk; } ;


 int MBEDTLS_CIPHERSUITE_NODTLS ;
 scalar_t__ MBEDTLS_CIPHER_ARC4_128 ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECJPAKE ;
 scalar_t__ MBEDTLS_MD_NONE ;
 scalar_t__ MBEDTLS_PK_NONE ;
 scalar_t__ MBEDTLS_SSL_ARC4_DISABLED ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int MBEDTLS_TLS_EXT_ECJPAKE_KKPP_OK ;
 TYPE_4__* mbedtls_ssl_ciphersuite_from_id (int) ;
 scalar_t__ mbedtls_ssl_ciphersuite_uses_ec (TYPE_4__ const*) ;
 scalar_t__ mbedtls_ssl_ciphersuite_uses_psk (TYPE_4__ const*) ;
 scalar_t__ mbedtls_ssl_get_ciphersuite_sig_alg (TYPE_4__ const*) ;
 scalar_t__ mbedtls_ssl_sig_hash_set_find (int *,scalar_t__) ;
 scalar_t__ ssl_pick_cert (TYPE_3__*,TYPE_4__ const*) ;

__attribute__((used)) static int ssl_ciphersuite_match( mbedtls_ssl_context *ssl, int suite_id,
                                  const mbedtls_ssl_ciphersuite_t **ciphersuite_info )
{
    const mbedtls_ssl_ciphersuite_t *suite_info;






    suite_info = mbedtls_ssl_ciphersuite_from_id( suite_id );
    if( suite_info == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "trying ciphersuite: %s", suite_info->name ) );

    if( suite_info->min_minor_ver > ssl->minor_ver ||
        suite_info->max_minor_ver < ssl->minor_ver )
    {
        MBEDTLS_SSL_DEBUG_MSG( 3, ( "ciphersuite mismatch: version" ) );
        return( 0 );
    }
    *ciphersuite_info = suite_info;
    return( 0 );
}
