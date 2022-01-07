
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; int * p; scalar_t__ n; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int mbedtls_free (int *) ;
 int mbedtls_mpi_zeroize (int *,scalar_t__) ;

void mbedtls_mpi_free( mbedtls_mpi *X )
{
    if( X == ((void*)0) )
        return;

    if( X->p != ((void*)0) )
    {
        mbedtls_mpi_zeroize( X->p, X->n );
        mbedtls_free( X->p );
    }

    X->s = 1;
    X->n = 0;
    X->p = ((void*)0);
}
