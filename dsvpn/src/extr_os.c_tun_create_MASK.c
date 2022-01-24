#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ifreq {int ifr_flags; char* ifr_name; } ;

/* Variables and functions */
 int IFF_NO_PI ; 
 int IFF_TUN ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  TUNSETIFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(char if_name[IFNAMSIZ], const char *wanted_name)
{
    struct ifreq ifr;
    int          fd;
    int          err;

    fd = FUNC3("/dev/net/tun", O_RDWR);
    if (fd == -1) {
        FUNC1(stderr, "tun module not present. See https://sk.tl/2RdReigK\n");
        return -1;
    }
    ifr.ifr_flags = IFF_TUN | IFF_NO_PI;
    FUNC4(ifr.ifr_name, IFNAMSIZ, "%s", wanted_name == NULL ? "" : wanted_name);
    if (FUNC2(fd, TUNSETIFF, &ifr) != 0) {
        err = errno;
        (void) FUNC0(fd);
        errno = err;
        return -1;
    }
    FUNC4(if_name, IFNAMSIZ, "%s", ifr.ifr_name);

    return fd;
}