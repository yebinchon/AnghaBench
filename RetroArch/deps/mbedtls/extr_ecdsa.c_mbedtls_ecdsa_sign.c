
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int const mbedtls_mpi ;
struct TYPE_12__ {int const X; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
struct TYPE_14__ {int * p; } ;
struct TYPE_13__ {int nbits; TYPE_3__ N; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_ECP_RANDOM_FAILED ;
 int MBEDTLS_MPI_CHK (int ) ;
 int derive_mpi (TYPE_2__*,int const*,unsigned char const*,size_t) ;
 int mbedtls_ecp_gen_keypair (TYPE_2__*,int const*,TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_ecp_point_free (TYPE_1__*) ;
 int mbedtls_ecp_point_init (TYPE_1__*) ;
 int mbedtls_mpi_add_mpi (int const*,int const*,int const*) ;
 scalar_t__ mbedtls_mpi_cmp_int (int const*,int) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int const*,TYPE_3__*) ;
 int mbedtls_mpi_fill_random (int const*,size_t,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_free (int const*) ;
 int mbedtls_mpi_init (int const*) ;
 int mbedtls_mpi_inv_mod (int const*,int const*,TYPE_3__*) ;
 int mbedtls_mpi_mod_mpi (int const*,int const*,TYPE_3__*) ;
 int mbedtls_mpi_mul_mpi (int const*,int const*,int const*) ;
 int mbedtls_mpi_shift_r (int const*,int) ;

int mbedtls_ecdsa_sign( mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret, key_tries, sign_tries, blind_tries;
    mbedtls_ecp_point R;
    mbedtls_mpi k, e, t;


    if( grp->N.p == ((void*)0) )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    mbedtls_ecp_point_init( &R );
    mbedtls_mpi_init( &k ); mbedtls_mpi_init( &e ); mbedtls_mpi_init( &t );

    sign_tries = 0;
    do
    {




        key_tries = 0;
        do
        {
            MBEDTLS_MPI_CHK( mbedtls_ecp_gen_keypair( grp, &k, &R, f_rng, p_rng ) );
            MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( r, &R.X, &grp->N ) );

            if( key_tries++ > 10 )
            {
                ret = MBEDTLS_ERR_ECP_RANDOM_FAILED;
                goto cleanup;
            }
        }
        while( mbedtls_mpi_cmp_int( r, 0 ) == 0 );




        MBEDTLS_MPI_CHK( derive_mpi( grp, &e, buf, blen ) );





        blind_tries = 0;
        do
        {
            size_t n_size = ( grp->nbits + 7 ) / 8;
            MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &t, n_size, f_rng, p_rng ) );
            MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( &t, 8 * n_size - grp->nbits ) );


            if( ++blind_tries > 30 )
                return( MBEDTLS_ERR_ECP_RANDOM_FAILED );
        }
        while( mbedtls_mpi_cmp_int( &t, 1 ) < 0 ||
               mbedtls_mpi_cmp_mpi( &t, &grp->N ) >= 0 );




        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( s, r, d ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &e, &e, s ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &e, &e, &t ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &k, &k, &t ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_inv_mod( s, &k, &grp->N ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( s, s, &e ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( s, s, &grp->N ) );

        if( sign_tries++ > 10 )
        {
            ret = MBEDTLS_ERR_ECP_RANDOM_FAILED;
            goto cleanup;
        }
    }
    while( mbedtls_mpi_cmp_int( s, 0 ) == 0 );

cleanup:
    mbedtls_ecp_point_free( &R );
    mbedtls_mpi_free( &k ); mbedtls_mpi_free( &e ); mbedtls_mpi_free( &t );

    return( ret );
}
