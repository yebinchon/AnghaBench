
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* peer_cert; } ;
typedef TYPE_3__ mbedtls_ssl_session ;
struct TYPE_6__ {size_t len; TYPE_3__ const* p; } ;
struct TYPE_7__ {TYPE_1__ raw; } ;


 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ;
 int memcpy (unsigned char*,TYPE_3__ const*,size_t) ;

__attribute__((used)) static int ssl_save_session( const mbedtls_ssl_session *session,
                             unsigned char *buf, size_t buf_len,
                             size_t *olen )
{
    unsigned char *p = buf;
    size_t left = buf_len;




    if( left < sizeof( mbedtls_ssl_session ) )
        return( MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL );

    memcpy( p, session, sizeof( mbedtls_ssl_session ) );
    p += sizeof( mbedtls_ssl_session );
    left -= sizeof( mbedtls_ssl_session );
    *olen = p - buf;

    return( 0 );
}
