
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mbedtls_mpi ;


 scalar_t__ mbedtls_mpi_div_mpi (int *,int *,int const*,int const*) ;

int crypto_bignum_div(const struct crypto_bignum *a,
                      const struct crypto_bignum *b,
                      struct crypto_bignum *c)
{
    return mbedtls_mpi_div_mpi((mbedtls_mpi *) c, ((void*)0), (const mbedtls_mpi *) a, (const mbedtls_mpi *) b) ?
           -1 : 0;
}
