#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int s; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSA_MEM_X_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MEM_Z_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MULT_START_REG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(mbedtls_mpi *Z, const mbedtls_mpi *X, const mbedtls_mpi *Y, size_t hw_words, size_t z_words)
{
    int ret = 0;

    /* Load Y to X input memory block, rerun */
    FUNC3(RSA_MEM_X_BLOCK_BASE, Y, hw_words);

    FUNC4(RSA_MULT_START_REG);

    FUNC0( FUNC1(Z, z_words) );

    FUNC5(RSA_MULT_START_REG);

    FUNC2(Z, RSA_MEM_Z_BLOCK_BASE, z_words);

    Z->s = X->s * Y->s;

 cleanup:
    return ret;
}