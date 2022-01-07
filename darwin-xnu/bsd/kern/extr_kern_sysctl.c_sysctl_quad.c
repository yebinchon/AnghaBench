
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;
typedef int quad_t ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ USER_ADDR_NULL ;
 int copyin (scalar_t__,int *,int) ;
 int copyout (int *,scalar_t__,int) ;

int
sysctl_quad(user_addr_t oldp, size_t *oldlenp,
            user_addr_t newp, size_t newlen, quad_t *valp)
{
 int error = 0;

 if (oldp != USER_ADDR_NULL && oldlenp == ((void*)0))
  return (EFAULT);
 if (oldp && *oldlenp < sizeof(quad_t))
  return (ENOMEM);
 if (newp && newlen != sizeof(quad_t))
  return (EINVAL);
 *oldlenp = sizeof(quad_t);
 if (oldp)
  error = copyout(valp, oldp, sizeof(quad_t));
 if (error == 0 && newp)
  error = copyin(newp, valp, sizeof(quad_t));
 return (error);
}
