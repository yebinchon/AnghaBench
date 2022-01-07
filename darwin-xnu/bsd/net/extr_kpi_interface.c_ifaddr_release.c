
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ifaddr_t ;
typedef int errno_t ;


 int EINVAL ;
 int IFA_REMREF (int *) ;

errno_t
ifaddr_release(ifaddr_t ifa)
{
 if (ifa == ((void*)0))
  return (EINVAL);

 IFA_REMREF(ifa);
 return (0);
}
