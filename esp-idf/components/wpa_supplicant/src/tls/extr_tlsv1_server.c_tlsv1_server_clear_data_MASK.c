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
struct tlsv1_server {scalar_t__ dh_secret_len; int /*<<< orphan*/ * dh_secret; scalar_t__ use_session_ticket; scalar_t__ session_ticket_len; int /*<<< orphan*/ * session_ticket; int /*<<< orphan*/ * client_rsa_key; int /*<<< orphan*/  verify; int /*<<< orphan*/  rl; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_NULL_WITH_NULL_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tlsv1_server *conn)
{
	FUNC5(&conn->rl, TLS_NULL_WITH_NULL_NULL);
	FUNC4(&conn->rl);
	FUNC3(&conn->rl);
	FUNC2(&conn->verify);

	FUNC0(conn->client_rsa_key);
	conn->client_rsa_key = NULL;

	FUNC1(conn->session_ticket);
	conn->session_ticket = NULL;
	conn->session_ticket_len = 0;
	conn->use_session_ticket = 0;

	FUNC1(conn->dh_secret);
	conn->dh_secret = NULL;
	conn->dh_secret_len = 0;
}