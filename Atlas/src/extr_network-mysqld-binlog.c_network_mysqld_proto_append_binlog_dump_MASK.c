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
struct TYPE_3__ {int /*<<< orphan*/  binlog_file; int /*<<< orphan*/  server_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  binlog_pos; } ;
typedef  TYPE_1__ network_mysqld_binlog_dump ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  COM_BINLOG_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(GString *packet, network_mysqld_binlog_dump *dump) {
	FUNC3(packet, COM_BINLOG_DUMP);
	FUNC2(packet, dump->binlog_pos);
	FUNC1(packet, dump->flags); /* flags */
	FUNC2(packet, dump->server_id);
	FUNC0(packet, dump->binlog_file); /* filename */
	FUNC3(packet, 0); /* term-nul */

	return 0;
}