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
typedef  int /*<<< orphan*/  mbedtls_x509write_cert ;

/* Variables and functions */
 int MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE ; 
 int /*<<< orphan*/  MBEDTLS_OID_KEY_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char**,unsigned char*,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*,int) ; 

int FUNC3( mbedtls_x509write_cert *ctx,
                                         unsigned int key_usage )
{
    unsigned char buf[4], ku;
    unsigned char *c;
    int ret;

    /* We currently only support 7 bits, from 0x80 to 0x02 */
    if( ( key_usage & ~0xfe ) != 0 )
        return( MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE );

    c = buf + 4;
    ku = (unsigned char) key_usage;

    if( ( ret = FUNC1( &c, buf, &ku, 7 ) ) != 4 )
        return( ret );

    ret = FUNC2( ctx, MBEDTLS_OID_KEY_USAGE,
                                       FUNC0( MBEDTLS_OID_KEY_USAGE ),
                                       1, buf, 4 );
    if( ret != 0 )
        return( ret );

    return( 0 );
}