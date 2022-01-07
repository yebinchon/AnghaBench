
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {int n; int* p; } ;
typedef TYPE_1__ const mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ;
 int MBEDTLS_MPI_CHK (int ) ;
 int ciL ;
 size_t mbedtls_mpi_bitlen (TYPE_1__ const*) ;
 scalar_t__ mbedtls_mpi_cmp_int (TYPE_1__ const*,int) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_copy (TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_exp_mod (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_fill_random (TYPE_1__ const*,int,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_free (TYPE_1__ const*) ;
 int mbedtls_mpi_init (TYPE_1__ const*) ;
 size_t mbedtls_mpi_lsb (TYPE_1__ const*) ;
 int mbedtls_mpi_mod_mpi (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_mul_mpi (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_shift_r (TYPE_1__ const*,size_t) ;
 int mbedtls_mpi_sub_int (TYPE_1__ const*,TYPE_1__ const*,int) ;

__attribute__((used)) static int mpi_miller_rabin( const mbedtls_mpi *X,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng )
{
    int ret, count;
    size_t i, j, k, n, s;
    mbedtls_mpi W, R, T, A, RR;

    mbedtls_mpi_init( &W ); mbedtls_mpi_init( &R ); mbedtls_mpi_init( &T ); mbedtls_mpi_init( &A );
    mbedtls_mpi_init( &RR );





    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_int( &W, X, 1 ) );
    s = mbedtls_mpi_lsb( &W );
    MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &R, &W ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( &R, s ) );

    i = mbedtls_mpi_bitlen( X );



    n = ( ( i >= 1300 ) ? 2 : ( i >= 850 ) ? 3 :
          ( i >= 650 ) ? 4 : ( i >= 350 ) ? 8 :
          ( i >= 250 ) ? 12 : ( i >= 150 ) ? 18 : 27 );

    for( i = 0; i < n; i++ )
    {



        MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &A, X->n * ciL, f_rng, p_rng ) );

        if( mbedtls_mpi_cmp_mpi( &A, &W ) >= 0 )
        {
            j = mbedtls_mpi_bitlen( &A ) - mbedtls_mpi_bitlen( &W );
            MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( &A, j + 1 ) );
        }
        A.p[0] |= 3;

        count = 0;
        do {
            MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &A, X->n * ciL, f_rng, p_rng ) );

            j = mbedtls_mpi_bitlen( &A );
            k = mbedtls_mpi_bitlen( &W );
            if (j > k) {
                MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( &A, j - k ) );
            }

            if (count++ > 30) {
                return MBEDTLS_ERR_MPI_NOT_ACCEPTABLE;
            }

        } while ( mbedtls_mpi_cmp_mpi( &A, &W ) >= 0 ||
                  mbedtls_mpi_cmp_int( &A, 1 ) <= 0 );




        MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &A, &A, &R, X, &RR ) );

        if( mbedtls_mpi_cmp_mpi( &A, &W ) == 0 ||
            mbedtls_mpi_cmp_int( &A, 1 ) == 0 )
            continue;

        j = 1;
        while( j < s && mbedtls_mpi_cmp_mpi( &A, &W ) != 0 )
        {



            MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T, &A, &A ) );
            MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &A, &T, X ) );

            if( mbedtls_mpi_cmp_int( &A, 1 ) == 0 )
                break;

            j++;
        }




        if( mbedtls_mpi_cmp_mpi( &A, &W ) != 0 ||
            mbedtls_mpi_cmp_int( &A, 1 ) == 0 )
        {
            ret = MBEDTLS_ERR_MPI_NOT_ACCEPTABLE;
            break;
        }
    }

cleanup:
    mbedtls_mpi_free( &W ); mbedtls_mpi_free( &R ); mbedtls_mpi_free( &T ); mbedtls_mpi_free( &A );
    mbedtls_mpi_free( &RR );

    return( ret );
}
