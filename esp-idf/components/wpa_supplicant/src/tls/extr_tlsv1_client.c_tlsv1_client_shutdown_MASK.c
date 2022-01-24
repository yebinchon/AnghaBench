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
struct tlsv1_client {scalar_t__ session_resumed; int /*<<< orphan*/ * server_rsa_key; scalar_t__ certificate_requested; int /*<<< orphan*/  rl; int /*<<< orphan*/  verify; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_HELLO ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_NULL_WITH_NULL_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct tlsv1_client *conn)
{
	conn->state = CLIENT_HELLO;

	if (FUNC1(&conn->verify) < 0) {
		FUNC5(MSG_DEBUG, "TLSv1: Failed to re-initialize verify "
			   "hash");
		return -1;
	}

	FUNC4(&conn->rl, TLS_NULL_WITH_NULL_NULL);
	FUNC3(&conn->rl);
	FUNC2(&conn->rl);

	conn->certificate_requested = 0;
	FUNC0(conn->server_rsa_key);
	conn->server_rsa_key = NULL;
	conn->session_resumed = 0;

	return 0;
}