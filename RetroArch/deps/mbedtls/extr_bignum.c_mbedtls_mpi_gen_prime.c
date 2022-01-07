
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


typedef int mbedtls_mpi_uint ;
struct TYPE_17__ {int* p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 size_t BITS_TO_LIMBS (size_t) ;
 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ;
 int MBEDTLS_MPI_CHK (int ) ;
 size_t MBEDTLS_MPI_MAX_BITS ;
 size_t ciL ;
 int mbedtls_mpi_add_int (TYPE_1__*,TYPE_1__*,int) ;
 size_t mbedtls_mpi_bitlen (TYPE_1__*) ;
 int mbedtls_mpi_copy (TYPE_1__*,TYPE_1__*) ;
 int mbedtls_mpi_fill_random (TYPE_1__*,size_t,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_free (TYPE_1__*) ;
 int mbedtls_mpi_init (TYPE_1__*) ;
 int mbedtls_mpi_is_prime (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_mod_int (int*,TYPE_1__*,int) ;
 int mbedtls_mpi_set_bit (TYPE_1__*,size_t,int) ;
 int mbedtls_mpi_shift_r (TYPE_1__*,int) ;
 int mpi_check_small_factors (TYPE_1__*) ;
 int mpi_miller_rabin (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ;

int mbedtls_mpi_gen_prime( mbedtls_mpi *X, size_t nbits, int dh_flag,
                   int (*f_rng)(void *, unsigned char *, size_t),
                   void *p_rng )
{
    int ret;
    size_t k, n;
    mbedtls_mpi_uint r;
    mbedtls_mpi Y;

    if( nbits < 3 || nbits > MBEDTLS_MPI_MAX_BITS )
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

    mbedtls_mpi_init( &Y );

    n = BITS_TO_LIMBS( nbits );

    MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( X, n * ciL, f_rng, p_rng ) );

    k = mbedtls_mpi_bitlen( X );
    if( k > nbits ) MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( X, k - nbits + 1 ) );

    mbedtls_mpi_set_bit( X, nbits-1, 1 );

    X->p[0] |= 1;

    if( dh_flag == 0 )
    {
        while( ( ret = mbedtls_mpi_is_prime( X, f_rng, p_rng ) ) != 0 )
        {
            if( ret != MBEDTLS_ERR_MPI_NOT_ACCEPTABLE )
                goto cleanup;

            MBEDTLS_MPI_CHK( mbedtls_mpi_add_int( X, X, 2 ) );
        }
    }
    else
    {






        X->p[0] |= 2;

        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_int( &r, X, 3 ) );
        if( r == 0 )
            MBEDTLS_MPI_CHK( mbedtls_mpi_add_int( X, X, 8 ) );
        else if( r == 1 )
            MBEDTLS_MPI_CHK( mbedtls_mpi_add_int( X, X, 4 ) );


        MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &Y, X ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( &Y, 1 ) );

        while( 1 )
        {




            if( ( ret = mpi_check_small_factors( X ) ) == 0 &&
                ( ret = mpi_check_small_factors( &Y ) ) == 0 &&
                ( ret = mpi_miller_rabin( X, f_rng, p_rng ) ) == 0 &&
                ( ret = mpi_miller_rabin( &Y, f_rng, p_rng ) ) == 0 )
            {
                break;
            }

            if( ret != MBEDTLS_ERR_MPI_NOT_ACCEPTABLE )
                goto cleanup;






            MBEDTLS_MPI_CHK( mbedtls_mpi_add_int( X, X, 12 ) );
            MBEDTLS_MPI_CHK( mbedtls_mpi_add_int( &Y, &Y, 6 ) );
        }
    }

cleanup:

    mbedtls_mpi_free( &Y );

    return( ret );
}
