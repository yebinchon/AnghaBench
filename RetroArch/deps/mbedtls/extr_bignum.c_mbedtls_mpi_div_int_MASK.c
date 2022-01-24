#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi_uint ;
typedef  int /*<<< orphan*/  mbedtls_mpi_sint ;
struct TYPE_9__ {int s; int n; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ; 

int FUNC1( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A, mbedtls_mpi_sint b )
{
    mbedtls_mpi _B;
    mbedtls_mpi_uint p[1];

    p[0] = ( b < 0 ) ? -b : b;
    _B.s = ( b < 0 ) ? -1 : 1;
    _B.n = 1;
    _B.p = p;

    return( FUNC0( Q, R, A, &_B ) );
}