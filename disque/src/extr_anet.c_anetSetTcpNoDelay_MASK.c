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
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int ANET_ERR ; 
 int ANET_OK ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(char *err, int fd, int val)
{
    if (FUNC1(fd, IPPROTO_TCP, TCP_NODELAY, &val, sizeof(val)) == -1)
    {
        FUNC0(err, "setsockopt TCP_NODELAY: %s", FUNC2(errno));
        return ANET_ERR;
    }
    return ANET_OK;
}