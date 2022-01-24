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
typedef  int /*<<< orphan*/  x_buf ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*,int,size_t*) ; 

__attribute__((used)) static void FUNC9(const char *a_str, const char *b_str, const char *e_str, size_t mod_bits)
{
    mbedtls_mpi A, B, X, E, M;
    char x_buf[1024] = { 0 };
    size_t x_buf_len = 0;

    FUNC4(&A);
    FUNC4(&B);
    FUNC4(&X);
    FUNC4(&E);

    FUNC1(FUNC6(&A, 16, a_str));
    FUNC1(FUNC6(&B, 16, b_str));

    /* E = A * B */
    FUNC1(FUNC6(&E, 16, e_str));
    FUNC1(FUNC5(&X, &A, &B));

    FUNC8(&X, 16, x_buf, sizeof(x_buf)-1, &x_buf_len);
    FUNC0(e_str, x_buf, "mbedtls_mpi_mul_mpi result wrong");

    /* if mod_bits arg is set, also do a esp_mpi_mul_mod() call */
    if (mod_bits > 0) {
        FUNC4(&M);
        for(int i = 0; i < mod_bits; i++) {
            FUNC7(&M, i, 1);
        }

        FUNC1(FUNC2(&X, &A, &B, &M));

        FUNC8(&X, 16, x_buf, sizeof(x_buf)-1, &x_buf_len);
        FUNC0(e_str, x_buf, "esp_mpi_mul_mpi_mod result wrong");

        FUNC3(&M);
    }


    FUNC3(&A);
    FUNC3(&B);
    FUNC3(&X);
    FUNC3(&E);
}