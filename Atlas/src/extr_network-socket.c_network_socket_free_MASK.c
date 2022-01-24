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
struct TYPE_4__ {int fd; int /*<<< orphan*/  charset_results; int /*<<< orphan*/  charset_connection; int /*<<< orphan*/  charset_client; int /*<<< orphan*/  default_db; int /*<<< orphan*/  event; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; scalar_t__ challenge; scalar_t__ response; int /*<<< orphan*/  recv_queue_raw; int /*<<< orphan*/  recv_queue; int /*<<< orphan*/  send_queue; } ;
typedef  TYPE_1__ network_socket ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(network_socket *s) {
	if (!s) return;

	FUNC7(s->send_queue);
	FUNC7(s->recv_queue);
	FUNC7(s->recv_queue_raw);

	if (s->response) FUNC6(s->response);
	if (s->challenge) FUNC5(s->challenge);

	FUNC4(s->dst);
	FUNC4(s->src);

	FUNC1(&(s->event));

	if (s->fd != -1) {
		FUNC0(s->fd);
	}

	FUNC3(s->default_db, TRUE);
	FUNC3(s->charset_client, TRUE);
	FUNC3(s->charset_connection, TRUE);
	FUNC3(s->charset_results, TRUE);

	FUNC2(s);
}