
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; char* ifr_name; } ;


 int IFF_NO_PI ;
 int IFF_TUN ;
 int IFNAMSIZ ;
 int O_RDWR ;
 int TUNSETIFF ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int open (char*,int ) ;
 int snprintf (char*,int ,char*,char*) ;
 int stderr ;

int tun_create(char if_name[IFNAMSIZ], const char *wanted_name)
{
    struct ifreq ifr;
    int fd;
    int err;

    fd = open("/dev/net/tun", O_RDWR);
    if (fd == -1) {
        fprintf(stderr, "tun module not present. See https://sk.tl/2RdReigK\n");
        return -1;
    }
    ifr.ifr_flags = IFF_TUN | IFF_NO_PI;
    snprintf(ifr.ifr_name, IFNAMSIZ, "%s", wanted_name == ((void*)0) ? "" : wanted_name);
    if (ioctl(fd, TUNSETIFF, &ifr) != 0) {
        err = errno;
        (void) close(fd);
        errno = err;
        return -1;
    }
    snprintf(if_name, IFNAMSIZ, "%s", ifr.ifr_name);

    return fd;
}
