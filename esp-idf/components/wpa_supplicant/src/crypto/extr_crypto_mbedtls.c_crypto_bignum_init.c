
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_bignum {int dummy; } ;
typedef int mbedtls_mpi ;


 int mbedtls_mpi_init (int *) ;
 int * os_zalloc (int) ;

struct crypto_bignum *crypto_bignum_init(void)
{
    mbedtls_mpi *bn = os_zalloc(sizeof(mbedtls_mpi));
    if (bn == ((void*)0)) {
        return ((void*)0);
    }

    mbedtls_mpi_init(bn);

    return (struct crypto_bignum *)bn;
}
