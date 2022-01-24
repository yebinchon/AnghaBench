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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  reuse ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC5(int fd, const struct sockaddr *addr,
              socklen_t addrlen)
{
    int ret;
    int reuse = 1;
    if (FUNC4(fd, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(reuse))) {
        FUNC0(NULL, AV_LOG_WARNING, "setsockopt(SO_REUSEADDR) failed\n");
    }
    ret = FUNC1(fd, addr, addrlen);
    if (ret)
        return FUNC2();

    ret = FUNC3(fd, 1);
    if (ret)
        return FUNC2();
    return ret;
}