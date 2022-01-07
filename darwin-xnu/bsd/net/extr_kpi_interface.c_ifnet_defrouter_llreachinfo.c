
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_llreach_info {int dummy; } ;
typedef int * ifnet_t ;
typedef int errno_t ;


 int AF_INET ;
 int AF_INET6 ;
 int EINVAL ;
 int VERIFY (int) ;
 int ifnet_llreach_get_defrouter (int *,int,struct ifnet_llreach_info*) ;

__attribute__((used)) static errno_t
ifnet_defrouter_llreachinfo(ifnet_t ifp, int af,
    struct ifnet_llreach_info *iflri)
{
 if (ifp == ((void*)0) || iflri == ((void*)0))
  return (EINVAL);

 VERIFY(af == AF_INET || af == AF_INET6);

 return (ifnet_llreach_get_defrouter(ifp, af, iflri));
}
