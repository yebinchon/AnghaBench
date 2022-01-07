
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_8__ {int Y; int X; int Z; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
struct TYPE_9__ {int pbits; int P; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_ERR_ECP_RANDOM_FAILED ;
 int MBEDTLS_MPI_CHK (int ) ;
 int MOD_MUL (int ) ;
 scalar_t__ mbedtls_internal_ecp_grp_capable (TYPE_2__ const*) ;
 int mbedtls_internal_ecp_randomize_jac (TYPE_2__ const*,TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int *,int *) ;
 int mbedtls_mpi_fill_random (int *,size_t,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_mul_mpi (int *,int *,int *) ;
 int mbedtls_mpi_shift_r (int *,int) ;

__attribute__((used)) static int ecp_randomize_jac( const mbedtls_ecp_group *grp, mbedtls_ecp_point *pt,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret;
    mbedtls_mpi l, ll;
    size_t p_size;
    int count = 0;
    p_size = ( grp->pbits + 7 ) / 8;
    mbedtls_mpi_init( &l ); mbedtls_mpi_init( &ll );


    do
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &l, p_size, f_rng, p_rng ) );

        while( mbedtls_mpi_cmp_mpi( &l, &grp->P ) >= 0 )
            MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( &l, 1 ) );

        if( count++ > 10 )
            return( MBEDTLS_ERR_ECP_RANDOM_FAILED );
    }
    while( mbedtls_mpi_cmp_int( &l, 1 ) <= 0 );


    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &pt->Z, &pt->Z, &l ) ); MOD_MUL( pt->Z );


    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ll, &l, &l ) ); MOD_MUL( ll );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &pt->X, &pt->X, &ll ) ); MOD_MUL( pt->X );


    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ll, &ll, &l ) ); MOD_MUL( ll );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &pt->Y, &pt->Y, &ll ) ); MOD_MUL( pt->Y );

cleanup:
    mbedtls_mpi_free( &l ); mbedtls_mpi_free( &ll );

    return( ret );
}
