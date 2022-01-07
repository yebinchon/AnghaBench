
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_mpi_uint ;
struct TYPE_4__ {int Z; int Y; int X; } ;
struct TYPE_5__ {int h; int N; void* nbits; int P; void* pbits; TYPE_1__ G; int B; int A; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int ecp_mpi_load (int *,int const*,size_t) ;
 int ecp_mpi_set1 (int *) ;
 void* mbedtls_mpi_bitlen (int *) ;

__attribute__((used)) static int ecp_group_load( mbedtls_ecp_group *grp,
                           const mbedtls_mpi_uint *p, size_t plen,
                           const mbedtls_mpi_uint *a, size_t alen,
                           const mbedtls_mpi_uint *b, size_t blen,
                           const mbedtls_mpi_uint *gx, size_t gxlen,
                           const mbedtls_mpi_uint *gy, size_t gylen,
                           const mbedtls_mpi_uint *n, size_t nlen)
{
    ecp_mpi_load( &grp->P, p, plen );
    if( a != ((void*)0) )
        ecp_mpi_load( &grp->A, a, alen );
    ecp_mpi_load( &grp->B, b, blen );
    ecp_mpi_load( &grp->N, n, nlen );

    ecp_mpi_load( &grp->G.X, gx, gxlen );
    ecp_mpi_load( &grp->G.Y, gy, gylen );
    ecp_mpi_set1( &grp->G.Z );

    grp->pbits = mbedtls_mpi_bitlen( &grp->P );
    grp->nbits = mbedtls_mpi_bitlen( &grp->N );

    grp->h = 1;

    return( 0 );
}
