
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct ifaliasreq {int ifra_broadaddr; int ifra_mask; int ifra_addr; int ifra_name; } ;
typedef int ifra ;
typedef int caddr_t ;


 int SIOCAIFADDR ;
 struct sockaddr_in blank_sin ;
 int bzero (struct ifaliasreq*,int) ;
 int current_proc () ;
 int ifioctl (struct socket*,int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
inet_aifaddr(struct socket * so, const char * name,
      const struct in_addr * addr,
      const struct in_addr * mask,
      const struct in_addr * broadcast)
{
    struct ifaliasreq ifra;

    bzero(&ifra, sizeof(ifra));
    strlcpy(ifra.ifra_name, name, sizeof(ifra.ifra_name));
    if (addr) {
 *((struct sockaddr_in *)(void *)&ifra.ifra_addr) = blank_sin;
 ((struct sockaddr_in *)(void *)&ifra.ifra_addr)->sin_addr = *addr;
    }
    if (mask) {
 *((struct sockaddr_in *)(void *)&ifra.ifra_mask) = blank_sin;
 ((struct sockaddr_in *)(void *)&ifra.ifra_mask)->sin_addr = *mask;
    }
    if (broadcast) {
 *((struct sockaddr_in *)(void *)&ifra.ifra_broadaddr) = blank_sin;
 ((struct sockaddr_in *)(void *)&ifra.ifra_broadaddr)->sin_addr = *broadcast;
    }
    return (ifioctl(so, SIOCAIFADDR, (caddr_t)&ifra, current_proc()));
}
