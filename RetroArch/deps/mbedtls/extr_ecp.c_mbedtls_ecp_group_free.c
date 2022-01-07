
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; size_t T_size; int * T; int N; int G; int B; int A; int P; } ;
typedef TYPE_1__ mbedtls_ecp_group ;


 int mbedtls_ecp_point_free (int *) ;
 int mbedtls_free (int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_ecp_group_free( mbedtls_ecp_group *grp )
{
    size_t i;

    if( grp == ((void*)0) )
        return;

    if( grp->h != 1 )
    {
        mbedtls_mpi_free( &grp->P );
        mbedtls_mpi_free( &grp->A );
        mbedtls_mpi_free( &grp->B );
        mbedtls_ecp_point_free( &grp->G );
        mbedtls_mpi_free( &grp->N );
    }

    if( grp->T != ((void*)0) )
    {
        for( i = 0; i < grp->T_size; i++ )
            mbedtls_ecp_point_free( &grp->T[i] );
        mbedtls_free( grp->T );
    }

    mbedtls_zeroize( grp, sizeof( mbedtls_ecp_group ) );
}
