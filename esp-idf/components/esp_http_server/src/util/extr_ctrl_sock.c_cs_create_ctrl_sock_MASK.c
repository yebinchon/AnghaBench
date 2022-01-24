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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(int port)
{
    int fd = FUNC5(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if (fd < 0) {
        return -1;
    }

    int ret;
    struct sockaddr_in addr;
    FUNC4(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = FUNC2(port);
    FUNC3("127.0.0.1", &addr.sin_addr);
    ret = FUNC0(fd, (struct sockaddr *)&addr, sizeof(addr));
    if (ret < 0) {
        FUNC1(fd);
        return -1;
    }
    return fd;
}