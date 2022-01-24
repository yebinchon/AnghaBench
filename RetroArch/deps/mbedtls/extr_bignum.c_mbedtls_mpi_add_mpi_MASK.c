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
struct TYPE_13__ {int s; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ; 

int FUNC4( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret, s = A->s;

    if( A->s * B->s < 0 )
    {
        if( FUNC2( A, B ) >= 0 )
        {
            FUNC0( FUNC3( X, A, B ) );
            X->s =  s;
        }
        else
        {
            FUNC0( FUNC3( X, B, A ) );
            X->s = -s;
        }
    }
    else
    {
        FUNC0( FUNC1( X, A, B ) );
        X->s = s;
    }

cleanup:

    return( ret );
}