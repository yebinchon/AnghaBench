#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ offset; TYPE_1__* data; } ;
typedef  TYPE_2__ network_packet ;
struct TYPE_11__ {int /*<<< orphan*/  sqlstate; int /*<<< orphan*/  errmsg; int /*<<< orphan*/  errcode; } ;
typedef  TYPE_3__ network_mysqld_err_packet_t ;
typedef  scalar_t__ guint8 ;
typedef  int guint32 ;
typedef  int /*<<< orphan*/  guint16 ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_9__ {scalar_t__ len; } ;

/* Variables and functions */
 int CLIENT_PROTOCOL_41 ; 
 int /*<<< orphan*/  G_STRLOC ; 
 scalar_t__ MYSQLD_PACKET_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ **,int) ; 

int FUNC6(network_packet *packet, network_mysqld_err_packet_t *err_packet) {
	guint8 field_count, marker;
	guint16 errcode;
	gchar *sqlstate = NULL, *errmsg = NULL;
	guint32 capabilities = CLIENT_PROTOCOL_41;

	int err = 0;

	err = err || FUNC4(packet, &field_count);
	if (err) return -1;

	if (field_count != MYSQLD_PACKET_ERR) {
		FUNC0("%s: expected the first byte to be 0xff, got %d",
				G_STRLOC,
				field_count);
		return -1;
	}

	err = err || FUNC3(packet, &errcode);
	if (capabilities & CLIENT_PROTOCOL_41) {
		err = err || FUNC4(packet, &marker);
		err = err || (marker != '#');
		err = err || FUNC5(packet, &sqlstate, 5);
	}
	if (packet->offset < packet->data->len) {
		err = err || FUNC5(packet, &errmsg, packet->data->len - packet->offset);
	}

	if (!err) {
		err_packet->errcode = errcode;
		if (errmsg) FUNC2(err_packet->errmsg, errmsg);
		FUNC2(err_packet->sqlstate, sqlstate);
	}

	if (sqlstate) FUNC1(sqlstate);
	if (errmsg) FUNC1(errmsg);

	return err ? -1 : 0;
}