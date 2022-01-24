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
typedef  size_t uint32_t ;
typedef  scalar_t__ mbedtls_mpi_uint ;
typedef  int /*<<< orphan*/  const mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSA_LENGTH_REG ; 
 int /*<<< orphan*/  RSA_MEM_M_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MEM_RB_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MEM_X_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MEM_Y_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MEM_Z_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MOD_MULT_START_REG ; 
 int /*<<< orphan*/  RSA_M_DASH_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(mbedtls_mpi *Z, const mbedtls_mpi *X, const mbedtls_mpi *Y, const mbedtls_mpi *M)
{
    int ret;
    size_t m_words = FUNC11(M);
    mbedtls_mpi Rinv;
    mbedtls_mpi_uint Mprime;

    size_t num_words = FUNC1(FUNC1(m_words, FUNC11(X)), FUNC11(Y));

    if (num_words * 32 > 4096) {
        return MBEDTLS_ERR_MPI_NOT_ACCEPTABLE;
    }

    /* Calculate and load the first stage montgomery multiplication */
    FUNC7(&Rinv);
    FUNC2(FUNC3(&Rinv, M, m_words));
    Mprime = FUNC9(M);

    FUNC4();

    FUNC0(RSA_LENGTH_REG, (num_words - 1));
    FUNC0(RSA_M_DASH_REG, (uint32_t)Mprime);

    /* Load M, X, Rinv, Mprime (Mprime is mod 2^32) */
    FUNC10(RSA_MEM_M_BLOCK_BASE, M, num_words);
    FUNC10(RSA_MEM_X_BLOCK_BASE, X, num_words);
    FUNC10(RSA_MEM_Y_BLOCK_BASE, Y, num_words);
    FUNC10(RSA_MEM_RB_BLOCK_BASE, &Rinv, num_words);

    /* Execute first stage montgomery multiplication */
    FUNC12(RSA_MOD_MULT_START_REG);

    FUNC13(RSA_MOD_MULT_START_REG);

    FUNC8(Z, RSA_MEM_Z_BLOCK_BASE, m_words);

    FUNC5();

 cleanup:
    FUNC6(&Rinv);
    return ret;
}