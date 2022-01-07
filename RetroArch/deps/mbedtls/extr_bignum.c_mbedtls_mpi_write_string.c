
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int s; size_t n; size_t* p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL ;
 int MBEDTLS_MPI_CHK (int ) ;
 size_t ciL ;
 size_t mbedtls_mpi_bitlen (TYPE_1__ const*) ;
 int mbedtls_mpi_copy (TYPE_1__*,TYPE_1__ const*) ;
 int mbedtls_mpi_free (TYPE_1__*) ;
 int mbedtls_mpi_init (TYPE_1__*) ;
 int mpi_write_hlp (TYPE_1__*,int,char**) ;

int mbedtls_mpi_write_string( const mbedtls_mpi *X, int radix,
                              char *buf, size_t buflen, size_t *olen )
{
    int ret = 0;
    size_t n;
    char *p;
    mbedtls_mpi T;

    if( radix < 2 || radix > 16 )
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

    n = mbedtls_mpi_bitlen( X );
    if( radix >= 4 ) n >>= 1;
    if( radix >= 16 ) n >>= 1;





    n += 3 + ( ( n + 1 ) & 1 );

    if( buflen < n )
    {
        *olen = n;
        return( MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL );
    }

    p = buf;
    mbedtls_mpi_init( &T );

    if( X->s == -1 )
        *p++ = '-';

    if( radix == 16 )
    {
        int c;
        size_t i, j, k;

        for( i = X->n, k = 0; i > 0; i-- )
        {
            for( j = ciL; j > 0; j-- )
            {
                c = ( X->p[i - 1] >> ( ( j - 1 ) << 3) ) & 0xFF;

                if( c == 0 && k == 0 && ( i + j ) != 2 )
                    continue;

                *(p++) = "0123456789ABCDEF" [c / 16];
                *(p++) = "0123456789ABCDEF" [c % 16];
                k = 1;
            }
        }
    }
    else
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &T, X ) );

        if( T.s == -1 )
            T.s = 1;

        MBEDTLS_MPI_CHK( mpi_write_hlp( &T, radix, &p ) );
    }

    *p++ = '\0';
    *olen = p - buf;

cleanup:

    mbedtls_mpi_free( &T );

    return( ret );
}
