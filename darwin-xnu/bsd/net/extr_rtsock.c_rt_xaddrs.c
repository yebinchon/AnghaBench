
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_len; } ;
struct rt_addrinfo {int rti_addrs; struct sockaddr** rti_info; } ;
typedef scalar_t__ caddr_t ;


 int ADVANCE32 (scalar_t__,struct sockaddr*) ;
 int EINVAL ;
 int RTAX_MAX ;
 int bzero (struct sockaddr**,int) ;
 struct sockaddr sa_zero ;

__attribute__((used)) static int
rt_xaddrs(caddr_t cp, caddr_t cplim, struct rt_addrinfo *rtinfo)
{
 struct sockaddr *sa;
 int i;

 bzero(rtinfo->rti_info, sizeof (rtinfo->rti_info));
 for (i = 0; (i < RTAX_MAX) && (cp < cplim); i++) {
  if ((rtinfo->rti_addrs & (1 << i)) == 0)
   continue;
  sa = (struct sockaddr *)cp;



  if ((cp + sa->sa_len) > cplim)
   return (EINVAL);







  if (sa->sa_len == 0) {
   rtinfo->rti_info[i] = &sa_zero;
   return (0);
  }

  rtinfo->rti_info[i] = sa;
  ADVANCE32(cp, sa);
 }
 return (0);
}
