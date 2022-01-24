#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* socket_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_5__ {int /*<<< orphan*/  so_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SS_PRIV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

errno_t
FUNC2(socket_t sock, int on)
{
	if (sock == NULL)
		return (EINVAL);

	FUNC0(sock, 1);
	if (on)
		sock->so_state |= SS_PRIV;
	else
		sock->so_state &= ~SS_PRIV;
	FUNC1(sock, 1);
	return (0);
}