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
struct ifreq {int ifr_mtu; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCSIFMTU ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(const char *if_name, int mtu)
{
    struct ifreq ifr;
    int          fd;

    if ((fd = FUNC3(AF_INET, SOCK_DGRAM, 0)) == -1) {
        return -1;
    }
    ifr.ifr_mtu = mtu;
    FUNC2(ifr.ifr_name, IFNAMSIZ, "%s", if_name);
    if (FUNC1(fd, SIOCSIFMTU, &ifr) != 0) {
        FUNC0(fd);
        return -1;
    }
    return FUNC0(fd);
}