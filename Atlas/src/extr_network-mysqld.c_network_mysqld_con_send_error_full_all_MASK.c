#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  send_queue; } ;
typedef  TYPE_1__ network_socket ;
struct TYPE_11__ {int /*<<< orphan*/  sqlstate; int /*<<< orphan*/  errmsg; int /*<<< orphan*/  errcode; } ;
typedef  TYPE_2__ network_mysqld_err_packet_t ;
typedef  int /*<<< orphan*/  guint ;
typedef  int /*<<< orphan*/  gsize ;
typedef  char gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 () ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(network_socket *con,
		const char *errmsg, gsize errmsg_len,
		guint errorcode,
		const gchar *sqlstate,
		gboolean is_41_protocol) {
	GString *packet;
	network_mysqld_err_packet_t *err_packet;

	packet = FUNC3(10 + errmsg_len);
	
	err_packet = is_41_protocol ? FUNC5() : FUNC6();
	err_packet->errcode = errorcode;
	if (errmsg) FUNC1(err_packet->errmsg, errmsg, errmsg_len);
	if (sqlstate) FUNC1(err_packet->sqlstate, sqlstate, FUNC10(sqlstate));

	FUNC7(packet, err_packet);

	FUNC8(con, con->send_queue, FUNC0(packet));
	FUNC9(con);

	FUNC4(err_packet);
	FUNC2(packet, TRUE);

	return 0;
}