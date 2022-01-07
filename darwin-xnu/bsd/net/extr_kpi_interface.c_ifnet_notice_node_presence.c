
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
typedef int int32_t ;
typedef int * ifnet_t ;
typedef int errno_t ;


 scalar_t__ AF_INET6 ;
 scalar_t__ AF_LINK ;
 int EINVAL ;
 int dlil_node_present (int *,struct sockaddr*,int ,int,int,int *) ;

errno_t
ifnet_notice_node_presence(ifnet_t ifp, struct sockaddr *sa, int32_t rssi,
    int lqm, int npm, u_int8_t srvinfo[48])
{
 if (ifp == ((void*)0) || sa == ((void*)0) || srvinfo == ((void*)0))
  return (EINVAL);
 if (sa->sa_len > sizeof(struct sockaddr_storage))
  return (EINVAL);
 if (sa->sa_family != AF_LINK && sa->sa_family != AF_INET6)
  return (EINVAL);

 dlil_node_present(ifp, sa, rssi, lqm, npm, srvinfo);
 return (0);
}
