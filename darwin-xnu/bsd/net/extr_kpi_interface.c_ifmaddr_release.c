
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ifmultiaddr_t ;
typedef int errno_t ;


 int EINVAL ;
 int IFMA_REMREF (int *) ;

errno_t
ifmaddr_release(ifmultiaddr_t ifmaddr)
{
 if (ifmaddr == ((void*)0))
  return (EINVAL);

 IFMA_REMREF(ifmaddr);
 return (0);
}
