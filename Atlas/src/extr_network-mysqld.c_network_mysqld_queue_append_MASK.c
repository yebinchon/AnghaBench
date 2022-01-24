#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int last_packet_id; scalar_t__ packet_id_is_reset; } ;
typedef  TYPE_1__ network_socket ;
typedef  int /*<<< orphan*/  network_queue ;
typedef  int gsize ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FUNC0 (size_t,size_t) ; 
 size_t PACKET_LEN_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(network_socket *sock, network_queue *queue, const char *data, size_t packet_len) {
	gsize packet_offset = 0;

	do {
		GString *s;
		gsize cur_packet_len = FUNC0(packet_len, PACKET_LEN_MAX);

		s = FUNC2(packet_len + 4);

		if (sock->packet_id_is_reset) {
			sock->packet_id_is_reset = FALSE;
			sock->last_packet_id = 0xff; /** the ++last_packet_id will make sure we send a 0 */
		}

		FUNC4(s, cur_packet_len);
		FUNC3(s, ++sock->last_packet_id);
		FUNC1(s, data + packet_offset, cur_packet_len);

		FUNC5(queue, s);

		if (packet_len == PACKET_LEN_MAX) {
			s = FUNC2(4);

			FUNC4(s, 0);
			FUNC3(s, ++sock->last_packet_id);

			FUNC5(queue, s);
		}

		packet_len -= cur_packet_len;
		packet_offset += cur_packet_len;
	} while (packet_len > 0);

	return 0;
}