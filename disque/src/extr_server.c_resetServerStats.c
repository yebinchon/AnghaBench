
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ aof_delayed_fsync; scalar_t__ stat_net_output_bytes; scalar_t__ stat_net_input_bytes; TYPE_1__* inst_metric; scalar_t__ stat_rejected_conn; scalar_t__ stat_fork_rate; scalar_t__ stat_fork_time; scalar_t__ stat_numconnections; scalar_t__ stat_numcommands; } ;
struct TYPE_3__ {int samples; scalar_t__ last_sample_count; int last_sample_time; scalar_t__ idx; } ;


 int STATS_METRIC_COUNT ;
 int memset (int ,int ,int) ;
 int mstime () ;
 TYPE_2__ server ;

void resetServerStats(void) {
    int j;

    server.stat_numcommands = 0;
    server.stat_numconnections = 0;
    server.stat_fork_time = 0;
    server.stat_fork_rate = 0;
    server.stat_rejected_conn = 0;
    for (j = 0; j < STATS_METRIC_COUNT; j++) {
        server.inst_metric[j].idx = 0;
        server.inst_metric[j].last_sample_time = mstime();
        server.inst_metric[j].last_sample_count = 0;
        memset(server.inst_metric[j].samples,0,
            sizeof(server.inst_metric[j].samples));
    }
    server.stat_net_input_bytes = 0;
    server.stat_net_output_bytes = 0;
    server.aof_delayed_fsync = 0;
}
