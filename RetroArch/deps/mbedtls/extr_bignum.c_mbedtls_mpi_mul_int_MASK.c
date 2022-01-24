#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi_uint ;
struct TYPE_7__ {int s; int n; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ; 

int FUNC1( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_uint b )
{
    mbedtls_mpi _B;
    mbedtls_mpi_uint p[1];

    _B.s = 1;
    _B.n = 1;
    _B.p = p;
    p[0] = b;

    return( FUNC0( X, A, &_B ) );
}