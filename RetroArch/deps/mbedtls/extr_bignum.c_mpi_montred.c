
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int mbedtls_mpi_uint ;
struct TYPE_9__ {int n; int s; int* p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int mpi_montmul (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,int,TYPE_1__ const*) ;

__attribute__((used)) static int mpi_montred( mbedtls_mpi *A, const mbedtls_mpi *N, mbedtls_mpi_uint mm, const mbedtls_mpi *T )
{
    mbedtls_mpi_uint z = 1;
    mbedtls_mpi U;

    U.n = U.s = (int) z;
    U.p = &z;

    return( mpi_montmul( A, &U, N, mm, T ) );
}
