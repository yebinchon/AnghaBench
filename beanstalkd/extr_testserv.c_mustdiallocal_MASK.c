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

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(int port)
{
    struct sockaddr_in addr = {
        .sin_family = AF_INET,
        .sin_port = FUNC2(port),
    };

    int r = FUNC3("127.0.0.1", &addr.sin_addr);
    if (!r) {
        errno = EINVAL;
        FUNC6("inet_aton");
        FUNC1(1);
    }

    int fd = FUNC5(AF_INET, SOCK_STREAM, 0);
    if (fd == -1) {
        FUNC6("socket");
        FUNC1(1);
    }

    // Fix of the benchmarking issue on Linux. See issue #430.
    int flags = 1;
    if (FUNC4(fd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof(int))) {
        FUNC6("setting TCP_NODELAY on fd %d", fd);
        FUNC1(1);
    }

    r = FUNC0(fd, (struct sockaddr *)&addr, sizeof addr);
    if (r == -1) {
        FUNC6("connect");
        FUNC1(1);
    }

    return fd;
}