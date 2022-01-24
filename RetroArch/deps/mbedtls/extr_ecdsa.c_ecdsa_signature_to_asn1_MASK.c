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
typedef  int /*<<< orphan*/  mbedtls_mpi ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ECDSA_MAX_LEN ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC5( const mbedtls_mpi *r, const mbedtls_mpi *s,
                                    unsigned char *sig, size_t *slen )
{
    int ret;
    unsigned char buf[MBEDTLS_ECDSA_MAX_LEN];
    unsigned char *p = buf + sizeof( buf );
    size_t len = 0;

    FUNC0( len, FUNC2( &p, buf, s ) );
    FUNC0( len, FUNC2( &p, buf, r ) );

    FUNC0( len, FUNC1( &p, buf, len ) );
    FUNC0( len, FUNC3( &p, buf,
                                       MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) );

    FUNC4( sig, p, len );
    *slen = len;

    return( 0 );
}