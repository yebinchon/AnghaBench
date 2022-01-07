
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_mpi_uint ;
struct TYPE_3__ {int s; size_t n; int p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int memcpy (int ,void*,size_t) ;
 int os_zalloc (size_t) ;

__attribute__((used)) static inline void ecp_mpi_load( mbedtls_mpi *X, const mbedtls_mpi_uint *p, size_t len )
{
    X->s = 1;
    X->n = len / sizeof( mbedtls_mpi_uint );
    X->p = os_zalloc(len);
    memcpy(X->p, (void *)p, len);
}
