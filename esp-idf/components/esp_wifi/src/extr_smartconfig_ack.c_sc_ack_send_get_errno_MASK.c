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
typedef  int u32_t ;
typedef  int /*<<< orphan*/  sock_errno ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static int FUNC1(int fd)
{
    int sock_errno = 0;
    u32_t optlen = sizeof(sock_errno);

    FUNC0(fd, SOL_SOCKET, SO_ERROR, &sock_errno, &optlen);

    return sock_errno;
}