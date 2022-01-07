
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_mpi ;
typedef int mbedtls_ecp_point ;
struct TYPE_5__ {int nbits; int N; } ;
typedef TYPE_1__ mbedtls_ecp_group ;


 scalar_t__ ECP_TYPE_MONTGOMERY ;
 scalar_t__ ECP_TYPE_SHORT_WEIERSTRASS ;
 int MBEDTLS_ECP_MAX_BYTES ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_ECP_RANDOM_FAILED ;
 int MBEDTLS_MPI_CHK (int) ;
 scalar_t__ ecp_get_type (TYPE_1__*) ;
 int mbedtls_ecp_mul (TYPE_1__*,int *,int *,int const*,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_bitlen (int *) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int *,int *) ;
 int mbedtls_mpi_fill_random (int *,size_t,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_read_binary (int *,unsigned char*,size_t) ;
 int mbedtls_mpi_set_bit (int *,int,int) ;
 int mbedtls_mpi_shift_r (int *,int) ;

int mbedtls_ecp_gen_keypair_base( mbedtls_ecp_group *grp,
                     const mbedtls_ecp_point *G,
                     mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret;
    size_t n_size = ( grp->nbits + 7 ) / 8;
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

cleanup:
    if( ret != 0 )
        return( ret );

    return( mbedtls_ecp_mul( grp, Q, d, G, f_rng, p_rng ) );
}
