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
struct TYPE_3__ {int /*<<< orphan*/  event_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  log_pos; int /*<<< orphan*/  event_size; int /*<<< orphan*/  server_id; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ network_mysqld_binlog_event ;
typedef  int /*<<< orphan*/  guint8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(network_packet *packet, network_mysqld_binlog_event *event) {
	int err = 0;
	guint8 event_type;

	err = err || FUNC1(packet, &event->timestamp);
	err = err || FUNC2(packet,  &event_type);
	err = err || FUNC1(packet, &event->server_id);
	err = err || FUNC1(packet, &event->event_size);
	err = err || FUNC1(packet, &event->log_pos);
	err = err || FUNC0(packet, &event->flags);

	if (!err) {
	       	/* event->event_type is a enum, network_mysqld_proto_get_int8() wants a guint8 ... on x86 a passing the &(enum) down works, on sparc it doesn't */

		event->event_type = event_type;
	}

	return err ? -1 : 0;
}