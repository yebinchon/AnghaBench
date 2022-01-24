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
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,unsigned char*,int) ; 

int FUNC5( unsigned char **p, unsigned char *start,
                                     const char *oid, size_t oid_len,
                                     size_t par_len )
{
    int ret;
    size_t len = 0;

    if( par_len == 0 )
        FUNC0( len, FUNC2( p, start ) );
    else
        len += par_len;

    FUNC0( len, FUNC3( p, start, oid, oid_len ) );

    FUNC0( len, FUNC1( p, start, len ) );
    FUNC0( len, FUNC4( p, start,
                                       MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) );

    return( (int) len );
}