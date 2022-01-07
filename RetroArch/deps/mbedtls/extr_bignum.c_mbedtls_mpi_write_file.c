
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;
typedef int mbedtls_mpi ;
typedef int FILE ;


 int MBEDTLS_ERR_MPI_FILE_IO_ERROR ;
 int MBEDTLS_MPI_CHK (int ) ;
 int MBEDTLS_MPI_RW_BUFFER_SIZE ;
 size_t fwrite (char const*,int,size_t,int *) ;
 int mbedtls_mpi_write_string (int const*,int,char*,int,size_t*) ;
 int mbedtls_printf (char*,char const*,char*) ;
 int memset (char*,int ,int) ;
 size_t strlen (char const*) ;

int mbedtls_mpi_write_file( const char *p, const mbedtls_mpi *X, int radix, FILE *fout )
{
    int ret;
    size_t n, slen, plen;




    char s[ MBEDTLS_MPI_RW_BUFFER_SIZE ];

    memset( s, 0, sizeof( s ) );

    MBEDTLS_MPI_CHK( mbedtls_mpi_write_string( X, radix, s, sizeof( s ) - 2, &n ) );

    if( p == ((void*)0) ) p = "";

    plen = strlen( p );
    slen = strlen( s );
    s[slen++] = '\r';
    s[slen++] = '\n';

    if( fout != ((void*)0) )
    {
        if( fwrite( p, 1, plen, fout ) != plen ||
            fwrite( s, 1, slen, fout ) != slen )
            return( MBEDTLS_ERR_MPI_FILE_IO_ERROR );
    }
    else
        mbedtls_printf( "%s%s", p, s );

cleanup:

    return( ret );
}
