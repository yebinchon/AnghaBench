#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char mbedtls_mpi_uint ;
struct TYPE_5__ {size_t n; int s; unsigned char* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 

int FUNC2( mbedtls_mpi *X, mbedtls_mpi *Y, unsigned char swap )
{
    int ret, s;
    size_t i;
    mbedtls_mpi_uint tmp;

    if( X == Y )
        return( 0 );

    /* make sure swap is 0 or 1 in a time-constant manner */
    swap = (swap | (unsigned char)-swap) >> 7;

    FUNC0( FUNC1( X, Y->n ) );
    FUNC0( FUNC1( Y, X->n ) );

    s = X->s;
    X->s = X->s * ( 1 - swap ) + Y->s * swap;
    Y->s = Y->s * ( 1 - swap ) +    s * swap;


    for( i = 0; i < X->n; i++ )
    {
        tmp = X->p[i];
        X->p[i] = X->p[i] * ( 1 - swap ) + Y->p[i] * swap;
        Y->p[i] = Y->p[i] * ( 1 - swap ) +     tmp * swap;
    }

cleanup:
    return( ret );
}