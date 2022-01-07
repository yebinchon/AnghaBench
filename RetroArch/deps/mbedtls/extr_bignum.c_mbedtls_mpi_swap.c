
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi ;


 int memcpy (int *,int *,int) ;

void mbedtls_mpi_swap( mbedtls_mpi *X, mbedtls_mpi *Y )
{
    mbedtls_mpi T;

    memcpy( &T, X, sizeof( mbedtls_mpi ) );
    memcpy( X, Y, sizeof( mbedtls_mpi ) );
    memcpy( Y, &T, sizeof( mbedtls_mpi ) );
}
