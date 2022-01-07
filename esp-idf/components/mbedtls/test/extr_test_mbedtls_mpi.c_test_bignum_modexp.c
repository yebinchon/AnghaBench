
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_buf ;
typedef int mbedtls_mpi ;


 int MBEDTLS_OK ;
 int TEST_ASSERT_FALSE (int ) ;
 int mbedtls_mpi_exp_mod (int *,int *,int *,int *,int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_read_string (int *,int,char const*) ;
 int mbedtls_mpi_write_string (int *,int,char*,int,size_t*) ;
 scalar_t__ memcmp (char const*,char*,int ) ;
 int printf (char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static bool test_bignum_modexp(const char *z_str, const char *x_str, const char *y_str, const char *m_str, int ret_error)
{
    mbedtls_mpi Z, X, Y, M;
    char z_buf[400] = { 0 };
    size_t z_buf_len = 0;
    bool fail = 0;

    printf("%s = (%s ^ %s) mod %s  ret=%d ... ", z_str, x_str, y_str, m_str, ret_error);

    mbedtls_mpi_init(&Z);
    mbedtls_mpi_init(&X);
    mbedtls_mpi_init(&Y);
    mbedtls_mpi_init(&M);

    TEST_ASSERT_FALSE(mbedtls_mpi_read_string(&X, 16, x_str));
    TEST_ASSERT_FALSE(mbedtls_mpi_read_string(&Y, 16, y_str));
    TEST_ASSERT_FALSE(mbedtls_mpi_read_string(&M, 16, m_str));






    if (ret_error != mbedtls_mpi_exp_mod(&Z, &X, &Y, &M, ((void*)0))) {
        fail = 1;
    }

    if (ret_error == MBEDTLS_OK) {
        mbedtls_mpi_write_string(&Z, 16, z_buf, sizeof(z_buf)-1, &z_buf_len);
        if (memcmp(z_str, z_buf, strlen(z_str)) != 0) {
            printf("\n Expected '%s' Was '%s' \n", z_str, z_buf);
            fail = 1;
        }
    }

    mbedtls_mpi_free(&Z);
    mbedtls_mpi_free(&X);
    mbedtls_mpi_free(&Y);
    mbedtls_mpi_free(&M);

    if (fail == 1) {
        printf(" FAIL\n");
    } else {
        printf(" PASS\n");
    }
    return fail;
}
