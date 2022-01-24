#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_7__ {TYPE_1__ raw; } ;
typedef  TYPE_2__ mbedtls_x509_crt ;
typedef  unsigned char mbedtls_ssl_session ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_ALLOC_FAILED ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC6( mbedtls_ssl_session *dst, const mbedtls_ssl_session *src )
{
    FUNC2( dst );
    FUNC5( dst, src, sizeof( mbedtls_ssl_session ) );

#if defined(MBEDTLS_X509_CRT_PARSE_C)
    if( src->peer_cert != NULL )
    {
        int ret;

        dst->peer_cert = (mbedtls_x509_crt*)mbedtls_calloc( 1, sizeof(mbedtls_x509_crt) );
        if( dst->peer_cert == NULL )
            return( MBEDTLS_ERR_SSL_ALLOC_FAILED );

        mbedtls_x509_crt_init( dst->peer_cert );

        if( ( ret = mbedtls_x509_crt_parse_der( dst->peer_cert, src->peer_cert->raw.p,
                                        src->peer_cert->raw.len ) ) != 0 )
        {
            mbedtls_free( dst->peer_cert );
            dst->peer_cert = NULL;
            return( ret );
        }
    }
#endif /* MBEDTLS_X509_CRT_PARSE_C */

#if defined(MBEDTLS_SSL_SESSION_TICKETS) && defined(MBEDTLS_SSL_CLI_C)
    if( src->ticket != NULL )
    {
        dst->ticket = (unsigned char*)mbedtls_calloc( 1, src->ticket_len );
        if( dst->ticket == NULL )
            return( MBEDTLS_ERR_SSL_ALLOC_FAILED );

        memcpy( dst->ticket, src->ticket, src->ticket_len );
    }
#endif /* MBEDTLS_SSL_SESSION_TICKETS && MBEDTLS_SSL_CLI_C */

    return( 0 );
}