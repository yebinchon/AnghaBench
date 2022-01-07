
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csrctl_args {int usersize; int useraddr; } ;
typedef int csr_config_t ;
typedef int config ;


 int EINVAL ;
 int copyout (int *,int ,int) ;
 int csr_get_active_config (int *) ;

int
syscall_csr_get_active_config(struct csrctl_args *args)
{
 csr_config_t config = 0;
 int error = 0;

 if (args->useraddr == 0 || args->usersize != sizeof(config))
  return EINVAL;

 error = csr_get_active_config(&config);
 if (error)
  return error;

 return copyout(&config, args->useraddr, sizeof(config));
}
