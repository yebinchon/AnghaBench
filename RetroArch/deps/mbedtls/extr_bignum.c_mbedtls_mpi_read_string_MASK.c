#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t mbedtls_mpi_uint ;
struct TYPE_13__ {int s; size_t* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t MPI_SIZE_T_MAX ; 
 int ciL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t*,int,char const) ; 
 size_t FUNC10 (char const*) ; 

int FUNC11( mbedtls_mpi *X, int radix, const char *s )
{
    int ret;
    size_t i, j, slen, n;
    mbedtls_mpi_uint d;
    mbedtls_mpi T;

    if( radix < 2 || radix > 16 )
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

    FUNC5( &T );

    slen = FUNC10( s );

    if( radix == 16 )
    {
        if( slen > MPI_SIZE_T_MAX >> 2 )
            return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

        n = FUNC0( slen << 2 );

        FUNC1( FUNC4( X, n ) );
        FUNC1( FUNC6( X, 0 ) );

        for( i = slen, j = 0; i > 0; i--, j++ )
        {
            if( i == 1 && s[i - 1] == '-' )
            {
                X->s = -1;
                break;
            }

            FUNC1( FUNC9( &d, radix, s[i - 1] ) );
            X->p[j / ( 2 * ciL )] |= d << ( ( j % ( 2 * ciL ) ) << 2 );
        }
    }
    else
    {
        FUNC1( FUNC6( X, 0 ) );

        for( i = 0; i < slen; i++ )
        {
            if( i == 0 && s[i] == '-' )
            {
                X->s = -1;
                continue;
            }

            FUNC1( FUNC9( &d, radix, s[i] ) );
            FUNC1( FUNC7( &T, X, radix ) );

            if( X->s == 1 )
            {
                FUNC1( FUNC2( X, &T, d ) );
            }
            else
            {
                FUNC1( FUNC8( X, &T, d ) );
            }
        }
    }

cleanup:

    FUNC3( &T );

    return( ret );
}