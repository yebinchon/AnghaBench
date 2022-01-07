
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int s; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_MPI_CHK (int ) ;
 int RSA_MEM_X_BLOCK_BASE ;
 int RSA_MEM_Z_BLOCK_BASE ;
 int RSA_MULT_START_REG ;
 int mbedtls_mpi_grow (TYPE_1__*,size_t) ;
 int mem_block_to_mpi (TYPE_1__*,int ,size_t) ;
 int mpi_to_mem_block (int ,TYPE_1__ const*,size_t) ;
 int start_op (int ) ;
 int wait_op_complete (int ) ;

__attribute__((used)) static int modular_multiply_finish(mbedtls_mpi *Z, const mbedtls_mpi *X, const mbedtls_mpi *Y, size_t hw_words, size_t z_words)
{
    int ret = 0;


    mpi_to_mem_block(RSA_MEM_X_BLOCK_BASE, Y, hw_words);

    start_op(RSA_MULT_START_REG);

    MBEDTLS_MPI_CHK( mbedtls_mpi_grow(Z, z_words) );

    wait_op_complete(RSA_MULT_START_REG);

    mem_block_to_mpi(Z, RSA_MEM_Z_BLOCK_BASE, z_words);

    Z->s = X->s * Y->s;

 cleanup:
    return ret;
}
