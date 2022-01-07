
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_mpi_uint ;
struct TYPE_3__ {size_t n; int * p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_ALLOC_FAILED ;
 size_t MBEDTLS_MPI_MAX_LIMBS ;
 int ciL ;
 scalar_t__ mbedtls_calloc (size_t,int) ;
 int mbedtls_free (int *) ;
 int mbedtls_mpi_zeroize (int *,int) ;
 int memcpy (int *,int *,int) ;

int mbedtls_mpi_grow( mbedtls_mpi *X, size_t nblimbs )
{
    mbedtls_mpi_uint *p;

    if( nblimbs > MBEDTLS_MPI_MAX_LIMBS )
        return( MBEDTLS_ERR_MPI_ALLOC_FAILED );

    if( X->n < nblimbs )
    {
        if( ( p = (mbedtls_mpi_uint*)mbedtls_calloc( nblimbs, ciL ) ) == ((void*)0) )
            return( MBEDTLS_ERR_MPI_ALLOC_FAILED );

        if( X->p != ((void*)0) )
        {
            memcpy( p, X->p, X->n * ciL );
            mbedtls_mpi_zeroize( X->p, X->n );
            mbedtls_free( X->p );
        }

        X->n = nblimbs;
        X->p = p;
    }

    return( 0 );
}
