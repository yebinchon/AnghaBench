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
struct waitq {int dummy; } ;
struct turnstile {struct waitq ts_waitq; } ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_mqueue_t ;

/* Variables and functions */
 struct turnstile* TURNSTILE_NULL ; 
 struct waitq* FUNC0 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct turnstile* FUNC3 (int /*<<< orphan*/ ) ; 

struct waitq *
FUNC4(struct waitq *waitq)
{
	struct waitq *safeq;

	ipc_mqueue_t mqueue = FUNC1(waitq);
	ipc_port_t port = FUNC2(mqueue);
	struct turnstile *rcv_turnstile = FUNC3(port);

	/* Check if the port has a rcv turnstile */
	if (rcv_turnstile != TURNSTILE_NULL) {
		safeq = &rcv_turnstile->ts_waitq;
	} else {
		safeq = FUNC0(waitq);
	}
	return safeq;
}