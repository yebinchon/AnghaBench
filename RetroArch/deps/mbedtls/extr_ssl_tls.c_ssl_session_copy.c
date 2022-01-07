
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int p; } ;
struct TYPE_7__ {TYPE_1__ raw; } ;
typedef TYPE_2__ mbedtls_x509_crt ;
typedef unsigned char mbedtls_ssl_session ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 scalar_t__ mbedtls_calloc (int,int) ;
 int mbedtls_free (TYPE_2__*) ;
 int mbedtls_ssl_session_free (unsigned char*) ;
 int mbedtls_x509_crt_init (TYPE_2__*) ;
 int mbedtls_x509_crt_parse_der (TYPE_2__*,int ,int ) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static int ssl_session_copy( mbedtls_ssl_session *dst, const mbedtls_ssl_session *src )
{
    mbedtls_ssl_session_free( dst );
    memcpy( dst, src, sizeof( mbedtls_ssl_session ) );
    return( 0 );
}
