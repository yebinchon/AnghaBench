
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi_uint ;



__attribute__((used)) static void mbedtls_mpi_zeroize( mbedtls_mpi_uint *v, size_t n ) {
    volatile mbedtls_mpi_uint *p = v; while( n-- ) *p++ = 0;
}
