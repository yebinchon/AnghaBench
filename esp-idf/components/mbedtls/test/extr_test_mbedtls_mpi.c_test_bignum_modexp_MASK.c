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
typedef  int /*<<< orphan*/  z_buf ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int,size_t*) ; 
 scalar_t__ FUNC6 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static bool FUNC9(const char *z_str, const char *x_str, const char *y_str, const char *m_str, int ret_error)
{
    mbedtls_mpi Z, X, Y, M;
    char z_buf[400] = { 0 };
    size_t z_buf_len = 0;
    bool fail = false;

    FUNC7("%s = (%s ^ %s) mod %s  ret=%d ... ", z_str, x_str, y_str, m_str, ret_error);

    FUNC3(&Z);
    FUNC3(&X);
    FUNC3(&Y);
    FUNC3(&M);

    FUNC0(FUNC4(&X, 16, x_str));
    FUNC0(FUNC4(&Y, 16, y_str));
    FUNC0(FUNC4(&M, 16, m_str));

    //mbedtls_mpi_printf("X", &X);
    //mbedtls_mpi_printf("X", &Y);
    //mbedtls_mpi_printf("M", &M);

    /* Z = (X ^ Y) mod M */
    if (ret_error != FUNC1(&Z, &X, &Y, &M, NULL)) {
        fail = true;
    }

    if (ret_error == MBEDTLS_OK) {
        FUNC5(&Z, 16, z_buf, sizeof(z_buf)-1, &z_buf_len);
        if (FUNC6(z_str, z_buf, FUNC8(z_str)) != 0) {
            FUNC7("\n Expected '%s' Was '%s' \n", z_str, z_buf);
            fail = true;
        }
    }

    FUNC2(&Z);
    FUNC2(&X);
    FUNC2(&Y);
    FUNC2(&M);

    if (fail == true) {
        FUNC7(" FAIL\n");
    } else {
        FUNC7(" PASS\n");
    }
    return fail;
}