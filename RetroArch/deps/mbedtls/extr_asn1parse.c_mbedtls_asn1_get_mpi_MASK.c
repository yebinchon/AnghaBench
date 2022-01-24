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

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_ASN1_INTEGER ; 
 int FUNC0 (unsigned char**,unsigned char const*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

int FUNC2( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_mpi *X )
{
    int ret;
    size_t len;

    if( ( ret = FUNC0( p, end, &len, MBEDTLS_ASN1_INTEGER ) ) != 0 )
        return( ret );

    ret = FUNC1( X, *p, len );

    *p += len;

    return( ret );
}