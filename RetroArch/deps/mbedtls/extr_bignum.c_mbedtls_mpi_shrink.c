
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mbedtls_mpi_uint ;
struct TYPE_4__ {size_t n; scalar_t__* p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_ALLOC_FAILED ;
 size_t ciL ;
 scalar_t__ mbedtls_calloc (size_t,size_t) ;
 int mbedtls_free (scalar_t__*) ;
 int mbedtls_mpi_grow (TYPE_1__*,size_t) ;
 int mbedtls_mpi_zeroize (scalar_t__*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,size_t) ;

int mbedtls_mpi_shrink( mbedtls_mpi *X, size_t nblimbs )
{
    mbedtls_mpi_uint *p;
    size_t i;


    if( X->n <= nblimbs )
        return( mbedtls_mpi_grow( X, nblimbs ) );

    for( i = X->n - 1; i > 0; i-- )
        if( X->p[i] != 0 )
            break;
    i++;

    if( i < nblimbs )
        i = nblimbs;

    if( ( p = (mbedtls_mpi_uint*)mbedtls_calloc( i, ciL ) ) == ((void*)0) )
        return( MBEDTLS_ERR_MPI_ALLOC_FAILED );

    if( X->p != ((void*)0) )
    {
        memcpy( p, X->p, i * ciL );
        mbedtls_mpi_zeroize( X->p, X->n );
        mbedtls_free( X->p );
    }

    X->n = i;
    X->p = p;

    return( 0 );
}
