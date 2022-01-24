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
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,size_t) ; 

int FUNC5( unsigned char **p, unsigned char *start,
                    const char *oid, size_t oid_len,
                    unsigned char *sig, size_t size )
{
    int ret;
    size_t len = 0;

    if( *p < start || (size_t)( *p - start ) < size )
        return( MBEDTLS_ERR_ASN1_BUF_TOO_SMALL );

    len = size;
    (*p) -= len;
    FUNC4( *p, sig, len );

    if( *p - start < 1 )
        return( MBEDTLS_ERR_ASN1_BUF_TOO_SMALL );

    *--(*p) = 0;
    len += 1;

    FUNC0( len, FUNC2( p, start, len ) );
    FUNC0( len, FUNC3( p, start, MBEDTLS_ASN1_BIT_STRING ) );

    /* Write OID */
    FUNC0( len, FUNC1( p, start, oid,
                                                        oid_len, 0 ) );

    return( (int) len );
}