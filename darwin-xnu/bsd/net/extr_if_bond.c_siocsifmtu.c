
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_mtu; } ;
struct ifnet {int dummy; } ;
typedef int ifr ;


 int SIOCSIFMTU ;
 int bzero (struct ifreq*,int) ;
 int ifnet_ioctl (struct ifnet*,int ,int ,struct ifreq*) ;

__attribute__((used)) static int
siocsifmtu(struct ifnet * ifp, int mtu)
{
    struct ifreq ifr;

    bzero(&ifr, sizeof(ifr));
    ifr.ifr_mtu = mtu;
    return (ifnet_ioctl(ifp, 0, SIOCSIFMTU, &ifr));
}
