#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct turnstile {int dummy; } ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_7__ {scalar_t__ ts_port_ref; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip_messages; } ;

/* Variables and functions */
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (uintptr_t,int /*<<< orphan*/ ,struct turnstile**) ; 
 int /*<<< orphan*/  FUNC7 (struct turnstile*) ; 

void
FUNC8(ipc_port_t port)
{
	struct turnstile *turnstile = TURNSTILE_NULL;

	/* Drop turnstile count on dest port */
	FUNC1(&port->ip_messages);

	FUNC3(port)->ts_port_ref--;
	if (FUNC3(port)->ts_port_ref == 0) {
		FUNC6((uintptr_t)port, FUNC4(port),
				&turnstile);
		FUNC0(turnstile != TURNSTILE_NULL);
	}
	FUNC2(&port->ip_messages);
	FUNC5();

	if (turnstile != TURNSTILE_NULL) {
		FUNC7(turnstile);
		turnstile = TURNSTILE_NULL;
	}
}