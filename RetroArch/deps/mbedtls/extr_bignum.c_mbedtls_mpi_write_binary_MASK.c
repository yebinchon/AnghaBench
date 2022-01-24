#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL ; 
 size_t ciL ; 
 size_t FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 

int FUNC2( const mbedtls_mpi *X, unsigned char *buf, size_t buflen )
{
    size_t i, j, n;

    n = FUNC0( X );

    if( buflen < n )
        return( MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL );

    FUNC1( buf, 0, buflen );

    for( i = buflen - 1, j = 0; n > 0; i--, j++, n-- )
        buf[i] = (unsigned char)( X->p[j / ciL] >> ((j % ciL) << 3) );

    return( 0 );
}