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
typedef  int /*<<< orphan*/  network_packet ;
struct TYPE_3__ {int /*<<< orphan*/  stmt_id; } ;
typedef  TYPE_1__ network_mysqld_stmt_close_packet_t ;
typedef  scalar_t__ guint8 ;

/* Variables and functions */
 scalar_t__ COM_STMT_CLOSE ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 

int FUNC3(network_packet *packet, network_mysqld_stmt_close_packet_t *stmt_close_packet) {
	guint8 packet_type;
	int err = 0;

	err = err || FUNC2(packet, &packet_type);
	if (err) return -1;

	if (COM_STMT_CLOSE != packet_type) {
		FUNC0("%s: expected the first byte to be %02x, got %02x",
				G_STRLOC,
				COM_STMT_CLOSE,
				packet_type);
		return -1;
	}

	err = err || FUNC1(packet, &stmt_close_packet->stmt_id);

	return err ? -1 : 0;
}