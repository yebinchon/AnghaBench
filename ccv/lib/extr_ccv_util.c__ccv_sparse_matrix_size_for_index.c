
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int * _ccv_sparse_prime ;

__attribute__((used)) static uint32_t _ccv_sparse_matrix_size_for_index(const int prime_index)
{
 return _ccv_sparse_prime[prime_index - 1];
}
