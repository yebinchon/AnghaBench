#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  send_queue; } ;
typedef  TYPE_1__ network_socket ;
struct TYPE_10__ {void* warnings; void* server_status; void* insert_id; void* affected_rows; } ;
typedef  TYPE_2__ network_mysqld_ok_packet_t ;
typedef  void* guint64 ;
typedef  void* guint16 ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int FUNC8(network_socket *con, guint64 affected_rows, guint64 insert_id, guint16 server_status, guint16 warnings ) {
	GString *packet = FUNC2(NULL);
	network_mysqld_ok_packet_t *ok_packet;

	ok_packet = FUNC4();
	ok_packet->affected_rows = affected_rows;
	ok_packet->insert_id     = insert_id;
	ok_packet->server_status = server_status;
	ok_packet->warnings      = warnings;

	FUNC5(packet, ok_packet);
	
	FUNC6(con, con->send_queue, FUNC0(packet));
	FUNC7(con);

	FUNC1(packet, TRUE);
	FUNC3(ok_packet);

	return 0;
}