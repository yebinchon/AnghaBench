
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csr_config_t ;


 int CSR_SYSCALL_GET_ACTIVE_CONFIG ;
 int __csrctl (int ,int *,int) ;

int csr_get_active_config(csr_config_t *config)
{
 return __csrctl(CSR_SYSCALL_GET_ACTIVE_CONFIG, config, sizeof(csr_config_t));
}
