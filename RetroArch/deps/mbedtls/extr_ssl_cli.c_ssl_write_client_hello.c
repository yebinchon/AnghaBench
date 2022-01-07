
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {scalar_t__ renego_status; size_t minor_ver; unsigned char* out_msg; int out_msglen; TYPE_3__* conf; int state; int out_msgtype; TYPE_2__* handshake; TYPE_1__* session_negotiate; int major_ver; } ;
typedef TYPE_4__ mbedtls_ssl_context ;
struct TYPE_27__ {scalar_t__ min_minor_ver; scalar_t__ max_minor_ver; int flags; scalar_t__ cipher; scalar_t__ key_exchange; } ;
typedef TYPE_5__ mbedtls_ssl_ciphersuite_t ;
typedef scalar_t__ ext_len ;
struct TYPE_25__ {int (* f_rng ) (int ,int *,int) ;size_t min_minor_ver; scalar_t__ max_major_ver; scalar_t__ max_minor_ver; scalar_t__ transport; int** ciphersuite_list; scalar_t__ arc4_disabled; scalar_t__ fallback; int p_rng; int min_major_ver; } ;
struct TYPE_24__ {unsigned char* randbytes; scalar_t__ resume; unsigned char* verify_cookie; size_t verify_cookie_len; int ecjpake_ctx; } ;
struct TYPE_23__ {size_t id_len; scalar_t__ ticket_len; int * id; int * ticket; } ;


 int MBEDTLS_CIPHERSUITE_NODTLS ;
 scalar_t__ MBEDTLS_CIPHER_ARC4_128 ;
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_NO_RNG ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECJPAKE ;
 scalar_t__ MBEDTLS_SSL_ARC4_DISABLED ;
 int MBEDTLS_SSL_COMPRESS_DEFLATE ;
 void* MBEDTLS_SSL_COMPRESS_NULL ;
 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,size_t) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_EMPTY_RENEGOTIATION_INFO ;
 int MBEDTLS_SSL_FALLBACK_SCSV_VALUE ;
 unsigned char MBEDTLS_SSL_HS_CLIENT_HELLO ;
 scalar_t__ MBEDTLS_SSL_INITIAL_HANDSHAKE ;
 scalar_t__ MBEDTLS_SSL_IS_FALLBACK ;
 int MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 scalar_t__ mbedtls_ecjpake_check (int *) ;
 TYPE_5__* mbedtls_ssl_ciphersuite_from_id (int const) ;
 int mbedtls_ssl_send_flight_completed (TYPE_4__*) ;
 int mbedtls_ssl_write_record (TYPE_4__*) ;
 int mbedtls_ssl_write_version (scalar_t__,scalar_t__,scalar_t__,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int ssl_cli_write_alpn_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_cli_write_encrypt_then_mac_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_cli_write_extended_ms_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_cli_write_max_fragment_length_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_cli_write_renegotiation_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_cli_write_session_ticket_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_cli_write_supported_elliptic_curves_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_cli_write_supported_point_formats_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_cli_write_truncated_hmac_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_generate_random (TYPE_4__*) ;
 int ssl_write_ecjpake_kkpp_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_write_hostname_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int ssl_write_signature_algorithms_ext (TYPE_4__*,unsigned char*,size_t*) ;
 int stub1 (int ,int *,int) ;

__attribute__((used)) static int ssl_write_client_hello( mbedtls_ssl_context *ssl )
{
    int ret;
    size_t i, n, olen, ext_len = 0;
    unsigned char *buf;
    unsigned char *p, *q;
    unsigned char offer_compress;
    const int *ciphersuites;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write client hello" ) );

    if( ssl->conf->f_rng == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "no RNG provided") );
        return( MBEDTLS_ERR_SSL_NO_RNG );
    }




    {
        ssl->major_ver = ssl->conf->min_major_ver;
        ssl->minor_ver = ssl->conf->min_minor_ver;
    }

    if( ssl->conf->max_major_ver == 0 )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "configured max major version is invalid, "
                            "consider using mbedtls_ssl_config_defaults()" ) );
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }
    buf = ssl->out_msg;
    p = buf + 4;

    mbedtls_ssl_write_version( ssl->conf->max_major_ver, ssl->conf->max_minor_ver,
                       ssl->conf->transport, p );
    p += 2;

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, max version: [%d:%d]",
                   buf[4], buf[5] ) );

    if( ( ret = ssl_generate_random( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "ssl_generate_random", ret );
        return( ret );
    }

    memcpy( p, ssl->handshake->randbytes, 32 );
    MBEDTLS_SSL_DEBUG_BUF( 3, "client hello, random bytes", p, 32 );
    p += 32;
    n = ssl->session_negotiate->id_len;

    if( n < 16 || n > 32 ||



        ssl->handshake->resume == 0 )
    {
        n = 0;
    }
    *p++ = (unsigned char) n;

    for( i = 0; i < n; i++ )
        *p++ = ssl->session_negotiate->id[i];

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, session id len.: %d", n ) );
    MBEDTLS_SSL_DEBUG_BUF( 3, "client hello, session id", buf + 39, n );
    ciphersuites = ssl->conf->ciphersuite_list[ssl->minor_ver];


    n = 0;
    q = p;
    p += 2;

    for( i = 0; ciphersuites[i] != 0; i++ )
    {
        ciphersuite_info = mbedtls_ssl_ciphersuite_from_id( ciphersuites[i] );

        if( ciphersuite_info == ((void*)0) )
            continue;

        if( ciphersuite_info->min_minor_ver > ssl->conf->max_minor_ver ||
            ciphersuite_info->max_minor_ver < ssl->conf->min_minor_ver )
            continue;
        MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, add ciphersuite: %04x",
                                    ciphersuites[i] ) );

        n++;
        *p++ = (unsigned char)( ciphersuites[i] >> 8 );
        *p++ = (unsigned char)( ciphersuites[i] );
    }







    {
        *p++ = (unsigned char)( MBEDTLS_SSL_EMPTY_RENEGOTIATION_INFO >> 8 );
        *p++ = (unsigned char)( MBEDTLS_SSL_EMPTY_RENEGOTIATION_INFO );
        n++;
    }
    *q++ = (unsigned char)( n >> 7 );
    *q++ = (unsigned char)( n << 1 );

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, got %d ciphersuites", n ) );




    offer_compress = 0;
    if( offer_compress )
    {
        MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, compress len.: %d", 2 ) );
        MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, compress alg.: %d %d",
                            MBEDTLS_SSL_COMPRESS_DEFLATE, MBEDTLS_SSL_COMPRESS_NULL ) );

        *p++ = 2;
        *p++ = MBEDTLS_SSL_COMPRESS_DEFLATE;
        *p++ = MBEDTLS_SSL_COMPRESS_NULL;
    }
    else
    {
        MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, compress len.: %d", 1 ) );
        MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, compress alg.: %d",
                            MBEDTLS_SSL_COMPRESS_NULL ) );

        *p++ = 1;
        *p++ = MBEDTLS_SSL_COMPRESS_NULL;
    }
    ((void) olen);

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "client hello, total extension length: %d",
                   ext_len ) );

    if( ext_len > 0 )
    {
        *p++ = (unsigned char)( ( ext_len >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( ext_len ) & 0xFF );
        p += ext_len;
    }

    ssl->out_msglen = p - buf;
    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0] = MBEDTLS_SSL_HS_CLIENT_HELLO;

    ssl->state++;






    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write client hello" ) );

    return( 0 );
}
