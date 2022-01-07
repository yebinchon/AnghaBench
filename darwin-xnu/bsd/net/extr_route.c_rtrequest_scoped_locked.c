
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;


 unsigned int IFSCOPE_NONE ;
 int RTF_IFSCOPE ;
 int rtrequest_common_locked (int,struct sockaddr*,struct sockaddr*,struct sockaddr*,int,struct rtentry**,unsigned int) ;

int
rtrequest_scoped_locked(int req, struct sockaddr *dst,
    struct sockaddr *gateway, struct sockaddr *netmask, int flags,
    struct rtentry **ret_nrt, unsigned int ifscope)
{
 if (ifscope != IFSCOPE_NONE)
  flags |= RTF_IFSCOPE;
 else
  flags &= ~RTF_IFSCOPE;

 return (rtrequest_common_locked(req, dst, gateway, netmask,
     flags, ret_nrt, ifscope));
}
