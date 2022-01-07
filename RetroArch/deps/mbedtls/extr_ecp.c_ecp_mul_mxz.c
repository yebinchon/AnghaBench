
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_14__ {int Z; int X; int Y; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
typedef int mbedtls_ecp_group ;


 int MBEDTLS_MPI_CHK (int ) ;
 int MOD_ADD (int ) ;
 int ecp_double_add_mxz (int *,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int *) ;
 int ecp_normalize_mxz (int *,TYPE_1__*) ;
 int ecp_randomize_mxz (int *,TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_ecp_copy (TYPE_1__*,TYPE_1__ const*) ;
 int mbedtls_ecp_point_free (TYPE_1__*) ;
 int mbedtls_ecp_point_init (TYPE_1__*) ;
 size_t mbedtls_mpi_bitlen (int const*) ;
 int mbedtls_mpi_copy (int *,int *) ;
 int mbedtls_mpi_free (int *) ;
 unsigned char mbedtls_mpi_get_bit (int const*,size_t) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_safe_cond_swap (int *,int *,unsigned char) ;

__attribute__((used)) static int ecp_mul_mxz( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                        const mbedtls_mpi *m, const mbedtls_ecp_point *P,
                        int (*f_rng)(void *, unsigned char *, size_t),
                        void *p_rng )
{
    int ret;
    size_t i;
    unsigned char b;
    mbedtls_ecp_point RP;
    mbedtls_mpi PX;

    mbedtls_ecp_point_init( &RP ); mbedtls_mpi_init( &PX );


    MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &PX, &P->X ) );
    MBEDTLS_MPI_CHK( mbedtls_ecp_copy( &RP, P ) );


    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &R->X, 1 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &R->Z, 0 ) );
    mbedtls_mpi_free( &R->Y );


    MOD_ADD( RP.X );


    if( f_rng != ((void*)0) )
        MBEDTLS_MPI_CHK( ecp_randomize_mxz( grp, &RP, f_rng, p_rng ) );


    i = mbedtls_mpi_bitlen( m );
    while( i-- > 0 )
    {
        b = mbedtls_mpi_get_bit( m, i );







        MBEDTLS_MPI_CHK( mbedtls_mpi_safe_cond_swap( &R->X, &RP.X, b ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_safe_cond_swap( &R->Z, &RP.Z, b ) );
        MBEDTLS_MPI_CHK( ecp_double_add_mxz( grp, R, &RP, R, &RP, &PX ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_safe_cond_swap( &R->X, &RP.X, b ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_safe_cond_swap( &R->Z, &RP.Z, b ) );
    }

    MBEDTLS_MPI_CHK( ecp_normalize_mxz( grp, R ) );

cleanup:
    mbedtls_ecp_point_free( &RP ); mbedtls_mpi_free( &PX );

    return( ret );
}
