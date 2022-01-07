
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int sdl_nlen; int sdl_data; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct ifnet {int dummy; } ;


 scalar_t__ AF_LINK ;
 int IFNAMSIZ ;
 int bcopy (int ,char*,int) ;
 struct ifnet* ifunit (char*) ;

struct ifnet *
if_withname(struct sockaddr *sa)
{
 char ifname[IFNAMSIZ+1];
 struct sockaddr_dl *sdl = (struct sockaddr_dl *)(void *)sa;

 if ((sa->sa_family != AF_LINK) || (sdl->sdl_nlen == 0) ||
     (sdl->sdl_nlen > IFNAMSIZ))
  return (((void*)0));
 bcopy(sdl->sdl_data, ifname, sdl->sdl_nlen);
 ifname[sdl->sdl_nlen] = '\0';
 return (ifunit(ifname));
}
