#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ version; TYPE_1__* errmsg; TYPE_2__* sqlstate; int /*<<< orphan*/  errcode; } ;
typedef  TYPE_3__ network_mysqld_err_packet_t ;
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/  str; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  str; } ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ NETWORK_MYSQLD_PROTOCOL_VERSION_41 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(GString *packet, network_mysqld_err_packet_t *err_packet) {
	int errmsg_len;

	FUNC4(packet, 0xff); /* ERR */
	FUNC3(packet, err_packet->errcode); /* errorcode */
	if (err_packet->version == NETWORK_MYSQLD_PROTOCOL_VERSION_41) {
		FUNC1(packet, '#');
		if (err_packet->sqlstate && (err_packet->sqlstate->len > 0)) {
			FUNC2(packet, err_packet->sqlstate->str, 5);
		} else {
			FUNC2(packet, FUNC0("07000"));
		}
	}

	errmsg_len = err_packet->errmsg->len;
	if (errmsg_len >= 512) errmsg_len = 512;
	FUNC2(packet, err_packet->errmsg->str, errmsg_len);

	return 0;
}