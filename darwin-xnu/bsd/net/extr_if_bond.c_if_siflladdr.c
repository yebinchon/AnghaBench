
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_data; int sa_len; int sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;
struct ifnet {int dummy; } ;
struct ether_addr {int dummy; } ;


 int AF_UNSPEC ;
 int ETHER_ADDR_LEN ;
 int SIOCSIFLLADDR ;
 int ether_addr_copy (int ,struct ether_addr const*) ;
 int ifnet_ioctl (struct ifnet*,int ,int ,struct ifreq*) ;

__attribute__((used)) static int
if_siflladdr(struct ifnet * ifp, const struct ether_addr * ea_p)
{
    struct ifreq ifr;





    ifr.ifr_addr.sa_family = AF_UNSPEC;
    ifr.ifr_addr.sa_len = ETHER_ADDR_LEN;
    ether_addr_copy(ifr.ifr_addr.sa_data, ea_p);
    return (ifnet_ioctl(ifp, 0, SIOCSIFLLADDR, &ifr));
}
