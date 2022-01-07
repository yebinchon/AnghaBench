
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {TYPE_6__* cert; int key; struct TYPE_10__* next; } ;
typedef TYPE_3__ mbedtls_ssl_key_cert ;
struct TYPE_11__ {scalar_t__ minor_ver; TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef TYPE_4__ mbedtls_ssl_context ;
typedef int mbedtls_ssl_ciphersuite_t ;
typedef scalar_t__ mbedtls_pk_type_t ;
struct TYPE_12__ {scalar_t__ sig_md; } ;
struct TYPE_9__ {TYPE_3__* key_cert; int curves; TYPE_3__* sni_key_cert; } ;
struct TYPE_8__ {TYPE_3__* key_cert; } ;


 scalar_t__ MBEDTLS_MD_SHA1 ;
 scalar_t__ MBEDTLS_PK_ECDSA ;
 scalar_t__ MBEDTLS_PK_NONE ;
 int MBEDTLS_SSL_DEBUG_CRT (int,char*,TYPE_6__*) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_IS_SERVER ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 int mbedtls_pk_can_do (int ,scalar_t__) ;
 scalar_t__ mbedtls_ssl_check_cert_usage (TYPE_6__*,int const*,int ,int *) ;
 scalar_t__ mbedtls_ssl_get_ciphersuite_sig_pk_alg (int const*) ;
 scalar_t__ ssl_check_key_curve (int ,int ) ;

__attribute__((used)) static int ssl_pick_cert( mbedtls_ssl_context *ssl,
                          const mbedtls_ssl_ciphersuite_t * ciphersuite_info )
{
    mbedtls_ssl_key_cert *cur, *list, *fallback = ((void*)0);
    mbedtls_pk_type_t pk_alg =
        mbedtls_ssl_get_ciphersuite_sig_pk_alg( ciphersuite_info );
    uint32_t flags;






        list = ssl->conf->key_cert;

    if( pk_alg == MBEDTLS_PK_NONE )
        return( 0 );

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "ciphersuite requires certificate" ) );

    if( list == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 3, ( "server has no certificate" ) );
        return( -1 );
    }

    for( cur = list; cur != ((void*)0); cur = cur->next )
    {
        MBEDTLS_SSL_DEBUG_CRT( 3, "candidate certificate chain, certificate",
                          cur->cert );

        if( ! mbedtls_pk_can_do( cur->key, pk_alg ) )
        {
            MBEDTLS_SSL_DEBUG_MSG( 3, ( "certificate mismatch: key type" ) );
            continue;
        }
        if( mbedtls_ssl_check_cert_usage( cur->cert, ciphersuite_info,
                                  MBEDTLS_SSL_IS_SERVER, &flags ) != 0 )
        {
            MBEDTLS_SSL_DEBUG_MSG( 3, ( "certificate mismatch: "
                                "(extended) key usage extension" ) );
            continue;
        }
        if( ssl->minor_ver < MBEDTLS_SSL_MINOR_VERSION_3 &&
            cur->cert->sig_md != MBEDTLS_MD_SHA1 )
        {
            if( fallback == ((void*)0) )
                fallback = cur;
            {
                MBEDTLS_SSL_DEBUG_MSG( 3, ( "certificate not preferred: "
                                    "sha-2 with pre-TLS 1.2 client" ) );
            continue;
            }
        }


        break;
    }

    if( cur == ((void*)0) )
        cur = fallback;


    if( cur != ((void*)0) )
    {
        ssl->handshake->key_cert = cur;
        MBEDTLS_SSL_DEBUG_CRT( 3, "selected certificate chain, certificate",
                          ssl->handshake->key_cert->cert );
        return( 0 );
    }

    return( -1 );
}
