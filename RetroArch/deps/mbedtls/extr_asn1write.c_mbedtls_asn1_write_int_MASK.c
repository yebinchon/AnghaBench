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
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBEDTLS_ASN1_INTEGER ; 
 int MBEDTLS_ERR_ASN1_BUF_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC3( unsigned char **p, unsigned char *start, int val )
{
    int ret;
    size_t len = 0;

    /* TODO negative values and values larger than 128
     * DER format assumes 2s complement for numbers, so the leftmost bit
     * should be 0 for positive numbers and 1 for negative numbers.
     */
    if( *p - start < 1 )
        return( MBEDTLS_ERR_ASN1_BUF_TOO_SMALL );

    len += 1;
    *--(*p) = val;

    if( val > 0 && **p & 0x80 )
    {
        if( *p - start < 1 )
            return( MBEDTLS_ERR_ASN1_BUF_TOO_SMALL );

        *--(*p) = 0x00;
        len += 1;
    }

    FUNC0( len, FUNC1( p, start, len ) );
    FUNC0( len, FUNC2( p, start, MBEDTLS_ASN1_INTEGER ) );

    return( (int) len );
}