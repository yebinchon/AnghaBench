#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* disconnect_lock; void* ssl_lock; int /*<<< orphan*/  socket; int /*<<< orphan*/  SendBuf; void* lock; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  num_tcp_connections ; 

SOCK *FUNC5()
{
	SOCK *s = FUNC4(sizeof(SOCK));

	s->ref = FUNC3();
	s->lock = FUNC2();
	s->SendBuf = FUNC1();
	s->socket = INVALID_SOCKET;
	s->ssl_lock = FUNC2();
	s->disconnect_lock = FUNC2();

	FUNC0(num_tcp_connections);

	return s;
}