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
typedef  int /*<<< orphan*/  u8 ;
struct tlsv1_server {int state; int /*<<< orphan*/  use_session_ticket; } ;

/* Variables and functions */
 int ESTABLISHED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  SERVER_CHANGE_CIPHER_SPEC 129 
#define  SERVER_HELLO 128 
 int /*<<< orphan*/ * FUNC0 (struct tlsv1_server*,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (struct tlsv1_server*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

u8 * FUNC3(struct tlsv1_server *conn, size_t *out_len)
{
	switch (conn->state) {
	case SERVER_HELLO:
		return FUNC1(conn, out_len);
	case SERVER_CHANGE_CIPHER_SPEC:
		return FUNC0(conn, out_len);
	default:
		if (conn->state == ESTABLISHED && conn->use_session_ticket) {
			/* Abbreviated handshake was already completed. */
			return NULL;
		}
		FUNC2(MSG_DEBUG, "TLSv1: Unexpected state %d while "
			   "generating reply", conn->state);
		return NULL;
	}
}