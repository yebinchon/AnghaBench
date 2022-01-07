
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
typedef int * ifnet_t ;
typedef int errno_t ;


 scalar_t__ AF_INET6 ;
 scalar_t__ AF_LINK ;
 int EINVAL ;
 int dlil_node_absent (int *,struct sockaddr*) ;

errno_t
ifnet_notice_node_absence(ifnet_t ifp, struct sockaddr *sa)
{
 if (ifp == ((void*)0) || sa == ((void*)0))
  return (EINVAL);
 if (sa->sa_len > sizeof(struct sockaddr_storage))
  return (EINVAL);
 if (sa->sa_family != AF_LINK && sa->sa_family != AF_INET6)
  return (EINVAL);

 dlil_node_absent(ifp, sa);
 return (0);
}
