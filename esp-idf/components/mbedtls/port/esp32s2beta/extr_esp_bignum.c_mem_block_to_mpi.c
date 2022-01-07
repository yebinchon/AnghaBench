
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {size_t n; scalar_t__* p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_MPI_CHK (int ) ;
 int esp_dport_access_read_buffer (scalar_t__*,int ,int) ;
 int mbedtls_mpi_grow (TYPE_1__*,int) ;

__attribute__((used)) static inline int mem_block_to_mpi(mbedtls_mpi *x, uint32_t mem_base, int num_words)
{
    int ret = 0;

    MBEDTLS_MPI_CHK( mbedtls_mpi_grow(x, num_words) );


    esp_dport_access_read_buffer(x->p, mem_base, num_words);


    for(size_t i = num_words; i < x->n; i++) {
        x->p[i] = 0;
    }

    asm volatile ("memw");
 cleanup:
    return ret;
}
