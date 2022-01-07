
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_9__ {int X; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
typedef int mbedtls_ecp_group ;


 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_ecp_check_pubkey (int *,TYPE_1__ const*) ;
 scalar_t__ mbedtls_ecp_is_zero (TYPE_1__*) ;
 int mbedtls_ecp_mul (int *,TYPE_1__*,int const*,TYPE_1__ const*,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_ecp_point_free (TYPE_1__*) ;
 int mbedtls_ecp_point_init (TYPE_1__*) ;
 int mbedtls_mpi_copy (int *,int *) ;

int mbedtls_ecdh_compute_shared( mbedtls_ecp_group *grp, mbedtls_mpi *z,
                         const mbedtls_ecp_point *Q, const mbedtls_mpi *d,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng )
{
    int ret;
    mbedtls_ecp_point P;

    mbedtls_ecp_point_init( &P );




    MBEDTLS_MPI_CHK( mbedtls_ecp_check_pubkey( grp, Q ) );

    MBEDTLS_MPI_CHK( mbedtls_ecp_mul( grp, &P, d, Q, f_rng, p_rng ) );

    if( mbedtls_ecp_is_zero( &P ) )
    {
        ret = MBEDTLS_ERR_ECP_BAD_INPUT_DATA;
        goto cleanup;
    }

    MBEDTLS_MPI_CHK( mbedtls_mpi_copy( z, &P.X ) );

cleanup:
    mbedtls_ecp_point_free( &P );

    return( ret );
}
