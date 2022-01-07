
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t* p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL ;
 size_t ciL ;
 size_t mbedtls_mpi_size (TYPE_1__ const*) ;
 int memset (unsigned char*,int ,size_t) ;

int mbedtls_mpi_write_binary( const mbedtls_mpi *X, unsigned char *buf, size_t buflen )
{
    size_t i, j, n;

    n = mbedtls_mpi_size( X );

    if( buflen < n )
        return( MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL );

    memset( buf, 0, buflen );

    for( i = buflen - 1, j = 0; n > 0; i--, j++, n-- )
        buf[i] = (unsigned char)( X->p[j / ciL] >> ((j % ciL) << 3) );

    return( 0 );
}
