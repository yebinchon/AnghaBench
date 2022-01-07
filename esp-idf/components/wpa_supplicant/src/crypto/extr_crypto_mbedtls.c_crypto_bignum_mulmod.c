
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mbedtls_mpi ;


 int esp_mpi_mul_mpi_mod (int *,int *,int *,int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_mod_mpi (int *,int *,int *) ;
 int mbedtls_mpi_mul_mpi (int *,int const*,int const*) ;

int crypto_bignum_mulmod(const struct crypto_bignum *a,
                         const struct crypto_bignum *b,
                         const struct crypto_bignum *c,
                         struct crypto_bignum *d)
{
    int res;
    res = esp_mpi_mul_mpi_mod((mbedtls_mpi *) d, (mbedtls_mpi *) a, (mbedtls_mpi *) b, (mbedtls_mpi *) c);

    return res ? -1 : 0;
}
