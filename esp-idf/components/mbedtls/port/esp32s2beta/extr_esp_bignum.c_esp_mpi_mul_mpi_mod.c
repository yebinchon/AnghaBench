
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ mbedtls_mpi_uint ;
typedef int const mbedtls_mpi ;


 int DPORT_REG_WRITE (int ,size_t) ;
 size_t MAX (size_t,size_t) ;
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ;
 int MBEDTLS_MPI_CHK (int ) ;
 int RSA_LENGTH_REG ;
 int RSA_MEM_M_BLOCK_BASE ;
 int RSA_MEM_RB_BLOCK_BASE ;
 int RSA_MEM_X_BLOCK_BASE ;
 int RSA_MEM_Y_BLOCK_BASE ;
 int RSA_MEM_Z_BLOCK_BASE ;
 int RSA_MOD_MULT_START_REG ;
 int RSA_M_DASH_REG ;
 int calculate_rinv (int const*,int const*,size_t) ;
 int esp_mpi_acquire_hardware () ;
 int esp_mpi_release_hardware () ;
 int mbedtls_mpi_free (int const*) ;
 int mbedtls_mpi_init (int const*) ;
 int mem_block_to_mpi (int const*,int ,size_t) ;
 scalar_t__ modular_inverse (int const*) ;
 int mpi_to_mem_block (int ,int const*,size_t) ;
 size_t mpi_words (int const*) ;
 int start_op (int ) ;
 int wait_op_complete (int ) ;

int esp_mpi_mul_mpi_mod(mbedtls_mpi *Z, const mbedtls_mpi *X, const mbedtls_mpi *Y, const mbedtls_mpi *M)
{
    int ret;
    size_t m_words = mpi_words(M);
    mbedtls_mpi Rinv;
    mbedtls_mpi_uint Mprime;

    size_t num_words = MAX(MAX(m_words, mpi_words(X)), mpi_words(Y));

    if (num_words * 32 > 4096) {
        return MBEDTLS_ERR_MPI_NOT_ACCEPTABLE;
    }


    mbedtls_mpi_init(&Rinv);
    MBEDTLS_MPI_CHK(calculate_rinv(&Rinv, M, m_words));
    Mprime = modular_inverse(M);

    esp_mpi_acquire_hardware();

    DPORT_REG_WRITE(RSA_LENGTH_REG, (num_words - 1));
    DPORT_REG_WRITE(RSA_M_DASH_REG, (uint32_t)Mprime);


    mpi_to_mem_block(RSA_MEM_M_BLOCK_BASE, M, num_words);
    mpi_to_mem_block(RSA_MEM_X_BLOCK_BASE, X, num_words);
    mpi_to_mem_block(RSA_MEM_Y_BLOCK_BASE, Y, num_words);
    mpi_to_mem_block(RSA_MEM_RB_BLOCK_BASE, &Rinv, num_words);


    start_op(RSA_MOD_MULT_START_REG);

    wait_op_complete(RSA_MOD_MULT_START_REG);

    mem_block_to_mpi(Z, RSA_MEM_Z_BLOCK_BASE, m_words);

    esp_mpi_release_hardware();

 cleanup:
    mbedtls_mpi_free(&Rinv);
    return ret;
}
