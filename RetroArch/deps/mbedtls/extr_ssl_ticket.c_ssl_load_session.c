
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_x509_crt ;
struct TYPE_4__ {int * peer_cert; } ;
typedef TYPE_1__ mbedtls_ssl_session ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int * mbedtls_calloc (int,int) ;
 int mbedtls_free (int *) ;
 int mbedtls_x509_crt_free (int *) ;
 int mbedtls_x509_crt_init (int *) ;
 int mbedtls_x509_crt_parse_der (int *,unsigned char const*,size_t) ;
 int memcpy (TYPE_1__*,unsigned char const*,int) ;

__attribute__((used)) static int ssl_load_session( mbedtls_ssl_session *session,
                             const unsigned char *buf, size_t len )
{
    const unsigned char *p = buf;
    const unsigned char * const end = buf + len;




    if( p + sizeof( mbedtls_ssl_session ) > end )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    memcpy( session, p, sizeof( mbedtls_ssl_session ) );
    p += sizeof( mbedtls_ssl_session );
    if( p != end )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    return( 0 );
}
