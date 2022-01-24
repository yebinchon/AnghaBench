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
typedef  int /*<<< orphan*/  mbedtls_mpi_sint ;
struct TYPE_4__ {int n; int s; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ciL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC3( mbedtls_mpi *X, mbedtls_mpi_sint z )
{
    int ret;

    FUNC0( FUNC1( X, 1 ) );
    FUNC2( X->p, 0, X->n * ciL );

    X->p[0] = ( z < 0 ) ? -z : z;
    X->s    = ( z < 0 ) ? -1 : 1;

cleanup:

    return( ret );
}