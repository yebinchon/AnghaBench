
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int peer_pms ;
struct TYPE_8__ {scalar_t__ minor_ver; TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
typedef int len ;
typedef int fake_pms ;
struct TYPE_7__ {unsigned char* premaster; int pmslen; int max_minor_ver; int max_major_ver; } ;
struct TYPE_6__ {int (* f_rng ) (int ,unsigned char*,int) ;int p_rng; int transport; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED ;
 int MBEDTLS_PK_RSA ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 int mbedtls_pk_can_do (int ,int ) ;
 int mbedtls_pk_decrypt (int ,unsigned char const*,size_t,unsigned char*,size_t*,int,int (*) (int ,unsigned char*,int),int ) ;
 size_t mbedtls_pk_get_len (int ) ;
 int mbedtls_ssl_own_key (TYPE_3__*) ;
 int mbedtls_ssl_write_version (int ,int ,int ,unsigned char*) ;
 int stub1 (int ,unsigned char*,int) ;

__attribute__((used)) static int ssl_parse_encrypted_pms( mbedtls_ssl_context *ssl,
                                    const unsigned char *p,
                                    const unsigned char *end,
                                    size_t pms_offset )
{
    int ret;
    size_t len = mbedtls_pk_get_len( mbedtls_ssl_own_key( ssl ) );
    unsigned char *pms = ssl->handshake->premaster + pms_offset;
    unsigned char ver[2];
    unsigned char fake_pms[48], peer_pms[48];
    unsigned char mask;
    size_t i, peer_pmslen;
    unsigned int diff;

    if( ! mbedtls_pk_can_do( mbedtls_ssl_own_key( ssl ), MBEDTLS_PK_RSA ) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "got no RSA private key" ) );
        return( MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED );
    }
    if( p + len != end )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad client key exchange message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE );
    }

    mbedtls_ssl_write_version( ssl->handshake->max_major_ver,
                       ssl->handshake->max_minor_ver,
                       ssl->conf->transport, ver );
    ret = ssl->conf->f_rng( ssl->conf->p_rng, fake_pms, sizeof( fake_pms ) );
    if( ret != 0 )
        return( ret );

    ret = mbedtls_pk_decrypt( mbedtls_ssl_own_key( ssl ), p, len,
                      peer_pms, &peer_pmslen,
                      sizeof( peer_pms ),
                      ssl->conf->f_rng, ssl->conf->p_rng );

    diff = (unsigned int) ret;
    diff |= peer_pmslen ^ 48;
    diff |= peer_pms[0] ^ ver[0];
    diff |= peer_pms[1] ^ ver[1];






    if( sizeof( ssl->handshake->premaster ) < pms_offset ||
        sizeof( ssl->handshake->premaster ) - pms_offset < 48 )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }
    ssl->handshake->pmslen = 48;
    mask = - ( ( diff | - diff ) >> ( sizeof( unsigned int ) * 8 - 1 ) );




    for( i = 0; i < ssl->handshake->pmslen; i++ )
        pms[i] = ( mask & fake_pms[i] ) | ( (~mask) & peer_pms[i] );

    return( 0 );
}
