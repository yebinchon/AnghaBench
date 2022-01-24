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
typedef  int /*<<< orphan*/  sock_upcall ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int) ; 

errno_t
FUNC1(int domain, int type, int protocol, sock_upcall callback,
    void *context, socket_t *new_so)
{
	return (FUNC0(domain, type, protocol, callback,
	    context, new_so, false));
}