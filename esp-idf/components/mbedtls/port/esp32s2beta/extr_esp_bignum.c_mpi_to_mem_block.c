
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {size_t n; int* p; } ;
typedef TYPE_1__ mbedtls_mpi ;



__attribute__((used)) static inline void mpi_to_mem_block(uint32_t mem_base, const mbedtls_mpi *mpi, size_t num_words)
{
    uint32_t *pbase = (uint32_t *)mem_base;
    uint32_t copy_words = num_words < mpi->n ? num_words : mpi->n;


    for (int i = 0; i < copy_words; i++) {
        pbase[i] = mpi->p[i];
    }


    for (int i = copy_words; i < num_words; i++) {
        pbase[i] = 0;
    }


}
