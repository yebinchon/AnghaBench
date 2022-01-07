
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csr_config_t ;


 int CSR_SYSCALL_CHECK ;
 int __csrctl (int ,int *,int) ;

int csr_check(csr_config_t mask)
{
 return __csrctl(CSR_SYSCALL_CHECK, &mask, sizeof(csr_config_t));
}
