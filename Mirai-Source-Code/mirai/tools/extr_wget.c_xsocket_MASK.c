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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_socket ; 
 int /*<<< orphan*/  SYS_socketcall ; 
 int FUNC1 (int /*<<< orphan*/ ,int,...) ; 

int FUNC2(int domain, int type, int protocol)
{
#if !defined(__NR_socket)
    struct {
        int domain, type, protocol;
    } socketcall;
    socketcall.domain = domain;
    socketcall.type = type;
    socketcall.protocol = protocol;
    return FUNC1(FUNC0(SYS_socketcall), 1 /* SYS_SOCKET */, &socketcall);
#else
    return syscall(SCN(SYS_socket), domain, type, protocol);
#endif
}