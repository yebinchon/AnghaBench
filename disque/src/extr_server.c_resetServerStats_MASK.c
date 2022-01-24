#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ aof_delayed_fsync; scalar_t__ stat_net_output_bytes; scalar_t__ stat_net_input_bytes; TYPE_1__* inst_metric; scalar_t__ stat_rejected_conn; scalar_t__ stat_fork_rate; scalar_t__ stat_fork_time; scalar_t__ stat_numconnections; scalar_t__ stat_numcommands; } ;
struct TYPE_3__ {int /*<<< orphan*/  samples; scalar_t__ last_sample_count; int /*<<< orphan*/  last_sample_time; scalar_t__ idx; } ;

/* Variables and functions */
 int STATS_METRIC_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ server ; 

void FUNC2(void) {
    int j;

    server.stat_numcommands = 0;
    server.stat_numconnections = 0;
    server.stat_fork_time = 0;
    server.stat_fork_rate = 0;
    server.stat_rejected_conn = 0;
    for (j = 0; j < STATS_METRIC_COUNT; j++) {
        server.inst_metric[j].idx = 0;
        server.inst_metric[j].last_sample_time = FUNC1();
        server.inst_metric[j].last_sample_count = 0;
        FUNC0(server.inst_metric[j].samples,0,
            sizeof(server.inst_metric[j].samples));
    }
    server.stat_net_input_bytes = 0;
    server.stat_net_output_bytes = 0;
    server.aof_delayed_fsync = 0;
}