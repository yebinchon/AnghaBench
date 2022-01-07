
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int Z; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
typedef int mbedtls_ecp_group ;


 int MBEDTLS_MPI_CHK (int ) ;
 int ecp_add_mixed (int const*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int ecp_double_jac (int const*,TYPE_1__*,TYPE_1__*) ;
 int ecp_randomize_jac (int const*,TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ;
 int ecp_select_comb (int const*,TYPE_1__*,TYPE_1__ const*,unsigned char,unsigned char const) ;
 int mbedtls_ecp_point_free (TYPE_1__*) ;
 int mbedtls_ecp_point_init (TYPE_1__*) ;
 int mbedtls_mpi_lset (int *,int) ;

__attribute__((used)) static int ecp_mul_comb_core( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                              const mbedtls_ecp_point T[], unsigned char t_len,
                              const unsigned char x[], size_t d,
                              int (*f_rng)(void *, unsigned char *, size_t),
                              void *p_rng )
{
    int ret;
    mbedtls_ecp_point Txi;
    size_t i;

    mbedtls_ecp_point_init( &Txi );


    i = d;
    MBEDTLS_MPI_CHK( ecp_select_comb( grp, R, T, t_len, x[i] ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &R->Z, 1 ) );
    if( f_rng != 0 )
        MBEDTLS_MPI_CHK( ecp_randomize_jac( grp, R, f_rng, p_rng ) );

    while( i-- != 0 )
    {
        MBEDTLS_MPI_CHK( ecp_double_jac( grp, R, R ) );
        MBEDTLS_MPI_CHK( ecp_select_comb( grp, &Txi, T, t_len, x[i] ) );
        MBEDTLS_MPI_CHK( ecp_add_mixed( grp, R, R, &Txi ) );
    }

cleanup:

    mbedtls_ecp_point_free( &Txi );

    return( ret );
}
