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

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_ASN1_BIT_STRING ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int MBEDTLS_ERR_ASN1_BUF_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,size_t) ; 

int FUNC4( unsigned char **p, unsigned char *start,
                          const unsigned char *buf, size_t bits )
{
    int ret;
    size_t len = 0, size;

    size = ( bits / 8 ) + ( ( bits % 8 ) ? 1 : 0 );

    /* Calculate byte length */
    if( *p < start || (size_t)( *p - start ) < size + 1 )
        return( MBEDTLS_ERR_ASN1_BUF_TOO_SMALL );

    len = size + 1;
    (*p) -= size;
    FUNC3( *p, buf, size );

    /* Write unused bits */
    *--(*p) = (unsigned char) (size * 8 - bits);

    FUNC0( len, FUNC1( p, start, len ) );
    FUNC0( len, FUNC2( p, start, MBEDTLS_ASN1_BIT_STRING ) );

    return( (int) len );
}