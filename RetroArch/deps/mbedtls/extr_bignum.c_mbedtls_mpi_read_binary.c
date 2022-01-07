
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t mbedtls_mpi_uint ;
struct TYPE_5__ {size_t* p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int CHARS_TO_LIMBS (size_t) ;
 int MBEDTLS_MPI_CHK (int ) ;
 size_t ciL ;
 int mbedtls_mpi_grow (TYPE_1__*,int ) ;
 int mbedtls_mpi_lset (TYPE_1__*,int ) ;

int mbedtls_mpi_read_binary( mbedtls_mpi *X, const unsigned char *buf, size_t buflen )
{
    int ret;
    size_t i, j, n;

    for( n = 0; n < buflen; n++ )
        if( buf[n] != 0 )
            break;

    MBEDTLS_MPI_CHK( mbedtls_mpi_grow( X, CHARS_TO_LIMBS( buflen - n ) ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( X, 0 ) );

    for( i = buflen, j = 0; i > n; i--, j++ )
        X->p[j / ciL] |= ((mbedtls_mpi_uint) buf[i - 1]) << ((j % ciL) << 3);

cleanup:

    return( ret );
}
