#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int capabilities; int max_packet_size; int charset; TYPE_3__* database; TYPE_3__* response; TYPE_3__* username; } ;
typedef  TYPE_1__ network_mysqld_auth_response ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int CLIENT_PROTOCOL_41 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(GString *packet, network_mysqld_auth_response *auth) {
	int i;

	if (!(auth->capabilities & CLIENT_PROTOCOL_41)) {
		FUNC2(packet, auth->capabilities);
		FUNC3(packet, auth->max_packet_size); /* max-allowed-packet */

		if (auth->username->len) FUNC1(packet, FUNC0(auth->username));
		FUNC5(packet, 0x00); /* trailing \0 */

		if (auth->response->len) {
			FUNC1(packet, FUNC0(auth->response));
			FUNC5(packet, 0x00); /* trailing \0 */
		}
	} else {
		FUNC4(packet, auth->capabilities);
		FUNC4(packet, auth->max_packet_size); /* max-allowed-packet */
		
		FUNC5(packet, auth->charset); /* charset */

		for (i = 0; i < 23; i++) { /* filler */
			FUNC5(packet, 0x00);
		}

		if (auth->username->len) FUNC1(packet, FUNC0(auth->username));
		FUNC5(packet, 0x00); /* trailing \0 */

		/* scrambled password */
		FUNC6(packet, FUNC0(auth->response));
		if (auth->database->len) {
			FUNC1(packet, FUNC0(auth->database));
			FUNC5(packet, 0x00); /* trailing \0 */
		}
	}

	return 0;
}