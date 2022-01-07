
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_20__ {int X; int Y; } ;
typedef TYPE_2__ mbedtls_ecp_point ;
struct TYPE_19__ {int X; int Y; } ;
struct TYPE_21__ {int nbits; unsigned char T_size; int const N; TYPE_2__* T; TYPE_1__ G; } ;
typedef TYPE_3__ mbedtls_ecp_group ;


 int COMB_MAX_D ;
 unsigned char MBEDTLS_ECP_WINDOW_SIZE ;
 int MBEDTLS_ERR_ECP_ALLOC_FAILED ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_MPI_CHK (int ) ;
 int ecp_comb_fixed (unsigned char*,size_t,unsigned char,int *) ;
 int ecp_mul_comb_core (TYPE_3__*,TYPE_2__*,TYPE_2__*,unsigned char,unsigned char*,size_t,int (*) (void*,unsigned char*,size_t),void*) ;
 int ecp_normalize_jac (TYPE_3__*,TYPE_2__*) ;
 int ecp_precompute_comb (TYPE_3__*,TYPE_2__*,TYPE_2__ const*,unsigned char,size_t) ;
 int ecp_safe_invert_jac (TYPE_3__*,TYPE_2__*,int) ;
 scalar_t__ mbedtls_calloc (unsigned char,int) ;
 int mbedtls_ecp_point_free (TYPE_2__*) ;
 int mbedtls_free (TYPE_2__*) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int *,int *) ;
 int mbedtls_mpi_copy (int *,int const*) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_get_bit (int const*,int ) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_safe_cond_assign (int *,int *,int) ;
 int mbedtls_mpi_sub_mpi (int *,int const*,int const*) ;

__attribute__((used)) static int ecp_mul_comb( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                         const mbedtls_mpi *m, const mbedtls_ecp_point *P,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng )
{
    int ret;
    unsigned char w, m_is_odd, p_eq_g, pre_len, i;
    size_t d;
    unsigned char k[COMB_MAX_D + 1];
    mbedtls_ecp_point *T;
    mbedtls_mpi M, mm;

    mbedtls_mpi_init( &M );
    mbedtls_mpi_init( &mm );


    if( mbedtls_mpi_get_bit( &grp->N, 0 ) != 1 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );






    w = grp->nbits >= 384 ? 5 : 4;
    p_eq_g = 0;






    if( w > MBEDTLS_ECP_WINDOW_SIZE )
        w = MBEDTLS_ECP_WINDOW_SIZE;
    if( w >= grp->nbits )
        w = 2;


    pre_len = 1U << ( w - 1 );
    d = ( grp->nbits + w - 1 ) / w;





    T = p_eq_g ? grp->T : ((void*)0);

    if( T == ((void*)0) )
    {
        T = (mbedtls_ecp_point*)mbedtls_calloc( pre_len, sizeof( mbedtls_ecp_point ) );
        if( T == ((void*)0) )
        {
            ret = MBEDTLS_ERR_ECP_ALLOC_FAILED;
            goto cleanup;
        }

        MBEDTLS_MPI_CHK( ecp_precompute_comb( grp, T, P, w, d ) );

        if( p_eq_g )
        {
            grp->T = T;
            grp->T_size = pre_len;
        }
    }





    m_is_odd = ( mbedtls_mpi_get_bit( m, 0 ) == 1 );
    MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &M, m ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &mm, &grp->N, m ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_safe_cond_assign( &M, &mm, ! m_is_odd ) );




    ecp_comb_fixed( k, d, w, &M );
    MBEDTLS_MPI_CHK( ecp_mul_comb_core( grp, R, T, pre_len, k, d, f_rng, p_rng ) );




    MBEDTLS_MPI_CHK( ecp_safe_invert_jac( grp, R, ! m_is_odd ) );
    MBEDTLS_MPI_CHK( ecp_normalize_jac( grp, R ) );

cleanup:

    if( T != ((void*)0) && ! p_eq_g )
    {
        for( i = 0; i < pre_len; i++ )
            mbedtls_ecp_point_free( &T[i] );
        mbedtls_free( T );
    }

    mbedtls_mpi_free( &M );
    mbedtls_mpi_free( &mm );

    if( ret != 0 )
        mbedtls_ecp_point_free( R );

    return( ret );
}
