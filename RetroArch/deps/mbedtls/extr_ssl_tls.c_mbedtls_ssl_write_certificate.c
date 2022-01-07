
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {size_t len; int p; } ;
struct TYPE_15__ {struct TYPE_15__* next; TYPE_3__ raw; } ;
typedef TYPE_4__ mbedtls_x509_crt ;
struct TYPE_16__ {scalar_t__ client_auth; scalar_t__ minor_ver; int out_msglen; unsigned char* out_msg; int state; int out_msgtype; TYPE_2__* conf; TYPE_1__* transform_negotiate; } ;
typedef TYPE_5__ mbedtls_ssl_context ;
struct TYPE_17__ {scalar_t__ key_exchange; } ;
typedef TYPE_6__ mbedtls_ssl_ciphersuite_t ;
struct TYPE_13__ {scalar_t__ endpoint; } ;
struct TYPE_12__ {TYPE_6__* ciphersuite_info; } ;


 int MBEDTLS_ERR_SSL_CERTIFICATE_REQUIRED ;
 int MBEDTLS_ERR_SSL_CERTIFICATE_TOO_LARGE ;
 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_DHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECJPAKE ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_PSK ;
 unsigned char MBEDTLS_SSL_ALERT_LEVEL_WARNING ;
 unsigned char MBEDTLS_SSL_ALERT_MSG_NO_CERT ;
 int MBEDTLS_SSL_DEBUG_CRT (int,char*,TYPE_4__*) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 unsigned char MBEDTLS_SSL_HS_CERTIFICATE ;
 scalar_t__ MBEDTLS_SSL_IS_CLIENT ;
 scalar_t__ MBEDTLS_SSL_IS_SERVER ;
 int MBEDTLS_SSL_MAX_CONTENT_LEN ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 int MBEDTLS_SSL_MSG_ALERT ;
 int MBEDTLS_SSL_MSG_HANDSHAKE ;
 TYPE_4__* mbedtls_ssl_own_cert (TYPE_5__*) ;
 int mbedtls_ssl_write_record (TYPE_5__*) ;
 int memcpy (unsigned char*,int ,size_t) ;

int mbedtls_ssl_write_certificate( mbedtls_ssl_context *ssl )
{
    int ret = MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE;
    size_t i, n;
    const mbedtls_x509_crt *crt;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info = ssl->transform_negotiate->ciphersuite_info;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write certificate" ) );

    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECJPAKE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= skip write certificate" ) );
        ssl->state++;
        return( 0 );
    }
    MBEDTLS_SSL_DEBUG_CRT( 3, "own certificate", mbedtls_ssl_own_cert( ssl ) );
    i = 7;
    crt = mbedtls_ssl_own_cert( ssl );

    while( crt != ((void*)0) )
    {
        n = crt->raw.len;
        if( n > MBEDTLS_SSL_MAX_CONTENT_LEN - 3 - i )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "certificate too large, %d > %d",
                           i + 3 + n, MBEDTLS_SSL_MAX_CONTENT_LEN ) );
            return( MBEDTLS_ERR_SSL_CERTIFICATE_TOO_LARGE );
        }

        ssl->out_msg[i ] = (unsigned char)( n >> 16 );
        ssl->out_msg[i + 1] = (unsigned char)( n >> 8 );
        ssl->out_msg[i + 2] = (unsigned char)( n );

        i += 3; memcpy( ssl->out_msg + i, crt->raw.p, n );
        i += n; crt = crt->next;
    }

    ssl->out_msg[4] = (unsigned char)( ( i - 7 ) >> 16 );
    ssl->out_msg[5] = (unsigned char)( ( i - 7 ) >> 8 );
    ssl->out_msg[6] = (unsigned char)( ( i - 7 ) );

    ssl->out_msglen = i;
    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0] = MBEDTLS_SSL_HS_CERTIFICATE;





    ssl->state++;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write certificate" ) );

    return( ret );
}
