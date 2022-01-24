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
struct tlsv1_client {int state; } ;

/* Variables and functions */
#define  ACK_FINISHED 130 
#define  CHANGE_CIPHER_SPEC 129 
#define  CLIENT_KEY_EXCHANGE 128 
 int ESTABLISHED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct tlsv1_client*,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (struct tlsv1_client*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

u8 * FUNC4(struct tlsv1_client *conn, size_t *out_len,
				  int no_appl_data)
{
	switch (conn->state) {
	case CLIENT_KEY_EXCHANGE:
		return FUNC2(conn, out_len);
	case CHANGE_CIPHER_SPEC:
		return FUNC1(conn, out_len);
	case ACK_FINISHED:
		FUNC3(MSG_DEBUG, "TLSv1: Handshake completed "
			   "successfully");
		conn->state = ESTABLISHED;
		*out_len = 0;
		if (no_appl_data) {
			/* Need to return something to get final TLS ACK. */
			return FUNC0(1);
		}
		return NULL;
	default:
		FUNC3(MSG_DEBUG, "TLSv1: Unexpected state %d while "
			   "generating reply", conn->state);
		return NULL;
	}
}