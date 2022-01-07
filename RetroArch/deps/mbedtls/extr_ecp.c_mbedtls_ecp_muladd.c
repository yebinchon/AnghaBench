
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi ;
typedef int mbedtls_ecp_point ;
typedef int mbedtls_ecp_group ;


 scalar_t__ ECP_TYPE_SHORT_WEIERSTRASS ;
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ;
 int MBEDTLS_MPI_CHK (int ) ;
 int ecp_add_mixed (int *,int *,int *,int *) ;
 scalar_t__ ecp_get_type (int *) ;
 int ecp_normalize_jac (int *,int *) ;
 int mbedtls_ecp_mul_shortcuts (int *,int *,int const*,int const*) ;
 int mbedtls_ecp_point_free (int *) ;
 int mbedtls_ecp_point_init (int *) ;
 int mbedtls_internal_ecp_free (int *) ;
 char mbedtls_internal_ecp_grp_capable (int *) ;
 int mbedtls_internal_ecp_init (int *) ;

int mbedtls_ecp_muladd( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q )
{
    int ret;
    mbedtls_ecp_point mP;




    if( ecp_get_type( grp ) != ECP_TYPE_SHORT_WEIERSTRASS )
        return( MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE );

    mbedtls_ecp_point_init( &mP );

    MBEDTLS_MPI_CHK( mbedtls_ecp_mul_shortcuts( grp, &mP, m, P ) );
    MBEDTLS_MPI_CHK( mbedtls_ecp_mul_shortcuts( grp, R, n, Q ) );
    MBEDTLS_MPI_CHK( ecp_add_mixed( grp, R, &mP, R ) );
    MBEDTLS_MPI_CHK( ecp_normalize_jac( grp, R ) );

cleanup:
    mbedtls_ecp_point_free( &mP );

    return( ret );
}
