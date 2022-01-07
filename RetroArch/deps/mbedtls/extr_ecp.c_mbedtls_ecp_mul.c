
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_9__ {int Z; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
typedef int mbedtls_ecp_group ;


 scalar_t__ ECP_TYPE_MONTGOMERY ;
 scalar_t__ ECP_TYPE_SHORT_WEIERSTRASS ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_MPI_CHK (int ) ;
 scalar_t__ ecp_get_type (int *) ;
 int ecp_mul_comb (int *,TYPE_1__*,int const*,TYPE_1__ const*,int (*) (void*,unsigned char*,size_t),void*) ;
 int ecp_mul_mxz (int *,TYPE_1__*,int const*,TYPE_1__ const*,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_ecp_check_privkey (int *,int const*) ;
 int mbedtls_ecp_check_pubkey (int *,TYPE_1__ const*) ;
 int mbedtls_internal_ecp_free (int *) ;
 char mbedtls_internal_ecp_grp_capable (int *) ;
 int mbedtls_internal_ecp_init (int *) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int) ;

int mbedtls_ecp_mul( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret = MBEDTLS_ERR_ECP_BAD_INPUT_DATA;





    if( mbedtls_mpi_cmp_int( &P->Z, 1 ) != 0 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = mbedtls_ecp_check_privkey( grp, m ) ) != 0 ||
        ( ret = mbedtls_ecp_check_pubkey( grp, P ) ) != 0 )
        return( ret );
    return( ret );
}
