
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_bignum {int dummy; } ;
typedef int mbedtls_mpi ;


 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_mpi_read_binary (int *,int const*,size_t) ;
 int os_free (int *) ;
 int * os_zalloc (int) ;

struct crypto_bignum *crypto_bignum_init_set(const u8 *buf, size_t len)
{
    int ret = 0;
    mbedtls_mpi *bn = os_zalloc(sizeof(mbedtls_mpi));
    if (bn == ((void*)0)) {
        return ((void*)0);
    }

    MBEDTLS_MPI_CHK(mbedtls_mpi_read_binary(bn, buf, len));
    return (struct crypto_bignum *) bn;

cleanup:
    os_free(bn);
    return ((void*)0);
}
