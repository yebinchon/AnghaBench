
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_mtu; int ifr_name; } ;


 int AF_INET ;
 int IFNAMSIZ ;
 int SIOCSIFMTU ;
 int SOCK_DGRAM ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int snprintf (int ,int ,char*,char const*) ;
 int socket (int ,int ,int ) ;

int tun_set_mtu(const char *if_name, int mtu)
{
    struct ifreq ifr;
    int fd;

    if ((fd = socket(AF_INET, SOCK_DGRAM, 0)) == -1) {
        return -1;
    }
    ifr.ifr_mtu = mtu;
    snprintf(ifr.ifr_name, IFNAMSIZ, "%s", if_name);
    if (ioctl(fd, SIOCSIFMTU, &ifr) != 0) {
        close(fd);
        return -1;
    }
    return close(fd);
}
