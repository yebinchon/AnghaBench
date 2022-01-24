#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_x509_buf ;

/* Variables and functions */
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ; 
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ; 
 int MBEDTLS_ERR_X509_INVALID_EXTENSIONS ; 
 int FUNC0 (unsigned char**,unsigned char const*,size_t*,int) ; 
 int FUNC1 (unsigned char**,unsigned char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2( unsigned char **p,
                             const unsigned char *end,
                             mbedtls_x509_buf *ext )
{
    int ret;
    size_t len = 0;

    /* Get explicit tag */
    if( ( ret = FUNC1( p, end, ext, 0) ) != 0 )
    {
        if( ret == MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
            return( 0 );

        return( ret );
    }

    while( *p < end )
    {
        if( ( ret = FUNC0( p, end, &len,
                MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

        *p += len;
    }

    if( *p != end )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    return( 0 );
}