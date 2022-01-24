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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  MBEDTLS_OID_BASIC_CONSTRAINTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char**,unsigned char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC8( mbedtls_x509write_cert *ctx,
                                         int is_ca, int max_pathlen )
{
    int ret;
    unsigned char buf[9];
    unsigned char *c = buf + sizeof(buf);
    size_t len = 0;

    FUNC7( buf, 0, sizeof(buf) );

    if( is_ca && max_pathlen > 127 )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    if( is_ca )
    {
        if( max_pathlen >= 0 )
        {
            FUNC0( len, FUNC3( &c, buf, max_pathlen ) );
        }
        FUNC0( len, FUNC2( &c, buf, 1 ) );
    }

    FUNC0( len, FUNC4( &c, buf, len ) );
    FUNC0( len, FUNC5( &c, buf, MBEDTLS_ASN1_CONSTRUCTED |
                                                MBEDTLS_ASN1_SEQUENCE ) );

    return FUNC6( ctx, MBEDTLS_OID_BASIC_CONSTRAINTS,
                                        FUNC1( MBEDTLS_OID_BASIC_CONSTRAINTS ),
                                        0, buf + sizeof(buf) - len, len );
}