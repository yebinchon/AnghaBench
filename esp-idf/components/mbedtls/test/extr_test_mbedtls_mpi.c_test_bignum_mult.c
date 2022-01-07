
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x_buf ;
typedef int mbedtls_mpi ;


 int TEST_ASSERT_EQUAL_STRING_MESSAGE (char const*,char*,char*) ;
 int TEST_ASSERT_FALSE (int ) ;
 int esp_mpi_mul_mpi_mod (int *,int *,int *,int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_mul_mpi (int *,int *,int *) ;
 int mbedtls_mpi_read_string (int *,int,char const*) ;
 int mbedtls_mpi_set_bit (int *,int,int) ;
 int mbedtls_mpi_write_string (int *,int,char*,int,size_t*) ;

__attribute__((used)) static void test_bignum_mult(const char *a_str, const char *b_str, const char *e_str, size_t mod_bits)
{
    mbedtls_mpi A, B, X, E, M;
    char x_buf[1024] = { 0 };
    size_t x_buf_len = 0;

    mbedtls_mpi_init(&A);
    mbedtls_mpi_init(&B);
    mbedtls_mpi_init(&X);
    mbedtls_mpi_init(&E);

    TEST_ASSERT_FALSE(mbedtls_mpi_read_string(&A, 16, a_str));
    TEST_ASSERT_FALSE(mbedtls_mpi_read_string(&B, 16, b_str));


    TEST_ASSERT_FALSE(mbedtls_mpi_read_string(&E, 16, e_str));
    TEST_ASSERT_FALSE(mbedtls_mpi_mul_mpi(&X, &A, &B));

    mbedtls_mpi_write_string(&X, 16, x_buf, sizeof(x_buf)-1, &x_buf_len);
    TEST_ASSERT_EQUAL_STRING_MESSAGE(e_str, x_buf, "mbedtls_mpi_mul_mpi result wrong");


    if (mod_bits > 0) {
        mbedtls_mpi_init(&M);
        for(int i = 0; i < mod_bits; i++) {
            mbedtls_mpi_set_bit(&M, i, 1);
        }

        TEST_ASSERT_FALSE(esp_mpi_mul_mpi_mod(&X, &A, &B, &M));

        mbedtls_mpi_write_string(&X, 16, x_buf, sizeof(x_buf)-1, &x_buf_len);
        TEST_ASSERT_EQUAL_STRING_MESSAGE(e_str, x_buf, "esp_mpi_mul_mpi_mod result wrong");

        mbedtls_mpi_free(&M);
    }


    mbedtls_mpi_free(&A);
    mbedtls_mpi_free(&B);
    mbedtls_mpi_free(&X);
    mbedtls_mpi_free(&E);
}
