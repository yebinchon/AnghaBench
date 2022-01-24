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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  RSA_MEM_M_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MEM_RB_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MEM_X_BLOCK_BASE ; 
 int /*<<< orphan*/  RSA_MULT_MODE_REG ; 
 int /*<<< orphan*/  RSA_MULT_START_REG ; 
 int /*<<< orphan*/  RSA_M_DASH_REG ; 
 size_t FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 size_t FUNC8 (size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 int FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(mbedtls_mpi *Z, const mbedtls_mpi *X, const mbedtls_mpi *Y, const mbedtls_mpi *M)
{
    int ret;
    size_t x_bits = FUNC9(X);
    size_t y_bits = FUNC9(Y);
    size_t m_bits = FUNC9(M);
    size_t z_bits = FUNC3(m_bits, x_bits + y_bits);
    size_t x_words = FUNC4(x_bits);
    size_t y_words = FUNC4(y_bits);
    size_t m_words = FUNC4(m_bits);
    size_t z_words = FUNC4(z_bits);
    size_t hw_words = FUNC8(FUNC1(x_words, FUNC1(y_words, m_words))); /* longest operand */
    mbedtls_mpi Rinv;
    mbedtls_mpi_uint Mprime;

    /* Calculate and load the first stage montgomery multiplication */
    FUNC11(&Rinv);
    FUNC2(FUNC5(&Rinv, M, hw_words));
    Mprime = FUNC12(M);

    FUNC6();

    /* Load M, X, Rinv, Mprime (Mprime is mod 2^32) */
    FUNC14(RSA_MEM_M_BLOCK_BASE, M, hw_words);
    FUNC14(RSA_MEM_X_BLOCK_BASE, X, hw_words);
    FUNC14(RSA_MEM_RB_BLOCK_BASE, &Rinv, hw_words);
    FUNC0(RSA_M_DASH_REG, (uint32_t)Mprime);

    /* "mode" register loaded with number of 512-bit blocks, minus 1 */
    FUNC0(RSA_MULT_MODE_REG, (hw_words / 16) - 1);

    /* Execute first stage montgomery multiplication */
    FUNC15(RSA_MULT_START_REG);

    FUNC16(RSA_MULT_START_REG);

    /* execute second stage */
    ret = FUNC13(Z, X, Y, hw_words, z_words);

    FUNC7();

 cleanup:
    FUNC10(&Rinv);
    return ret;
}