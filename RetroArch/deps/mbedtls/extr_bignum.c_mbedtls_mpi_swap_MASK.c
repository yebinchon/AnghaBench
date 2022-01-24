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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC1( mbedtls_mpi *X, mbedtls_mpi *Y )
{
    mbedtls_mpi T;

    FUNC0( &T,  X, sizeof( mbedtls_mpi ) );
    FUNC0(  X,  Y, sizeof( mbedtls_mpi ) );
    FUNC0(  Y, &T, sizeof( mbedtls_mpi ) );
}