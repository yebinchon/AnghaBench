
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifnet {int dummy; } ;
struct if_protolistreq64 {int ifpl_list; int ifpl_count; int ifpl_reserved; } ;
struct if_protolistreq32 {int ifpl_list; int ifpl_count; int ifpl_reserved; } ;
typedef int ifpl ;
typedef struct if_protolistreq64* caddr_t ;


 int CAST_USER_ADDR_T (int ) ;
 int EINVAL ;


 int VERIFY (int ) ;
 int bcopy (struct if_protolistreq64*,struct if_protolistreq64*,int) ;
 int ifioctl_get_protolist (struct ifnet*,int *,int ) ;

__attribute__((used)) static __attribute__((noinline)) int
ifioctl_protolist(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 int error = 0;

 switch (cmd) {
 case 129: {
  struct if_protolistreq32 ifpl;

  bcopy(data, &ifpl, sizeof(ifpl));
  if (ifpl.ifpl_reserved != 0) {
   error = EINVAL;
   break;
  }
  error = ifioctl_get_protolist(ifp, &ifpl.ifpl_count,
      CAST_USER_ADDR_T(ifpl.ifpl_list));
  bcopy(&ifpl, data, sizeof(ifpl));
  break;
 }
 case 128: {
  struct if_protolistreq64 ifpl;

  bcopy(data, &ifpl, sizeof(ifpl));
  if (ifpl.ifpl_reserved != 0) {
   error = EINVAL;
   break;
  }
  error = ifioctl_get_protolist(ifp, &ifpl.ifpl_count,
      ifpl.ifpl_list);
  bcopy(&ifpl, data, sizeof(ifpl));
  break;
 }
 default:
  VERIFY(0);

 }

 return (error);
}
