
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;


 int AUDIT_ARG (int ,int) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ USER_ADDR_NULL ;
 int copyin (scalar_t__,int*,int) ;
 int copyout (int*,scalar_t__,int) ;
 int value32 ;

int
sysctl_int(user_addr_t oldp, size_t *oldlenp,
           user_addr_t newp, size_t newlen, int *valp)
{
 int error = 0;

 if (oldp != USER_ADDR_NULL && oldlenp == ((void*)0))
  return (EFAULT);
 if (oldp && *oldlenp < sizeof(int))
  return (ENOMEM);
 if (newp && newlen != sizeof(int))
  return (EINVAL);
 *oldlenp = sizeof(int);
 if (oldp)
  error = copyout(valp, oldp, sizeof(int));
 if (error == 0 && newp) {
  error = copyin(newp, valp, sizeof(int));
  AUDIT_ARG(value32, *valp);
 }
 return (error);
}
