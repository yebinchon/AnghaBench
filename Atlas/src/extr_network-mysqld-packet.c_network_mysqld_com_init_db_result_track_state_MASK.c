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
struct TYPE_11__ {int /*<<< orphan*/ * db_name; } ;
typedef  TYPE_3__ network_mysqld_com_init_db_result_t ;
struct TYPE_9__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(network_packet *packet, network_mysqld_com_init_db_result_t *udata) {
	FUNC4(packet);
	FUNC3(packet, 1); /* the command */

	if (packet->offset != packet->data->len) {
		udata->db_name = FUNC1(NULL);

		FUNC2(packet, packet->data->len - packet->offset, udata->db_name);
	} else {
		if (udata->db_name) FUNC0(udata->db_name, TRUE);
		udata->db_name = NULL;
	}

	return 0;
}