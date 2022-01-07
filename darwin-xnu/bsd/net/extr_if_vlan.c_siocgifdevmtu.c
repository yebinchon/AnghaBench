
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifdevmtu {int dummy; } ;
struct ifreq {struct ifdevmtu ifr_devmtu; } ;
struct ifnet {int dummy; } ;
typedef int ifr ;


 int SIOCGIFDEVMTU ;
 int bzero (struct ifreq*,int) ;
 int ifnet_ioctl (struct ifnet*,int ,int ,struct ifreq*) ;

__attribute__((used)) static int
siocgifdevmtu(struct ifnet * ifp, struct ifdevmtu * ifdm_p)
{
    struct ifreq ifr;
    int error;

    bzero(&ifr, sizeof(ifr));
    error = ifnet_ioctl(ifp, 0,SIOCGIFDEVMTU, &ifr);
    if (error == 0) {
 *ifdm_p = ifr.ifr_devmtu;
    }
    return (error);
}
