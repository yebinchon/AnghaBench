
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t n; scalar_t__* p; } ;
typedef TYPE_1__ mbedtls_mpi ;



__attribute__((used)) static inline size_t word_length(const mbedtls_mpi *mpi)
{
    for(size_t i = mpi->n; i > 0; i--) {
        if( mpi->p[i - 1] != 0 ) {
            return i;
        }
    }
    return 0;
}
