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
typedef  int /*<<< orphan*/  socket_t ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(socket_t sock)
{
	if ((FUNC0(sock) == PF_INET || FUNC0(sock) == PF_INET6) &&
	    FUNC1(sock) == SOCK_STREAM) {
		FUNC2(sock);
	}
}