
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_llreach_info {int dummy; } ;
typedef int ifnet_t ;
typedef int errno_t ;


 int AF_INET ;
 int ifnet_defrouter_llreachinfo (int ,int ,struct ifnet_llreach_info*) ;

errno_t
ifnet_inet_defrouter_llreachinfo(ifnet_t ifp, struct ifnet_llreach_info *iflri)
{
 return (ifnet_defrouter_llreachinfo(ifp, AF_INET, iflri));
}
