
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csrctl_args {scalar_t__ useraddr; int usersize; } ;
typedef int mask ;
typedef int csr_config_t ;


 int EINVAL ;
 int copyin (scalar_t__,int *,int) ;
 int csr_check (int ) ;

int
syscall_csr_check(struct csrctl_args *args)
{
 csr_config_t mask = 0;
 int error = 0;

 if (args->useraddr == 0 || args->usersize != sizeof(mask))
  return EINVAL;

 error = copyin(args->useraddr, &mask, sizeof(mask));
 if (error)
  return error;

 return csr_check(mask);
}
