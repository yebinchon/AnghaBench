#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  ipv4_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct sockaddr*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ipv4_t FUNC7(void)
{
    int fd;
    struct sockaddr_in addr;
    socklen_t addr_len = sizeof (addr);

    errno = 0;
    if ((fd = FUNC6(AF_INET, SOCK_DGRAM, 0)) == -1)
    {
#ifdef DEBUG
        printf("[util] Failed to call socket(), errno = %d\n", errno);
#endif
        return 0;
    }

    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = FUNC0(8,8,8,8);
    addr.sin_port = FUNC4(53);

    FUNC2(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in));

    FUNC3(fd, (struct sockaddr *)&addr, &addr_len);
    FUNC1(fd);
    return addr.sin_addr.s_addr;
}