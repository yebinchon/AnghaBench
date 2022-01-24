#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_16__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_15__ {int type; TYPE_6__* dst; int /*<<< orphan*/  graph; int /*<<< orphan*/  time_base; } ;
struct TYPE_14__ {scalar_t__ pts; } ;
struct TYPE_13__ {int flags; int /*<<< orphan*/  index; int /*<<< orphan*/  arg; int /*<<< orphan*/  command; int /*<<< orphan*/  target; } ;
struct TYPE_12__ {int enabled; int nb_commands; TYPE_3__* commands; scalar_t__ end_ts; scalar_t__ start_ts; int /*<<< orphan*/  index; } ;
struct TYPE_11__ {int nb_intervals; TYPE_2__* intervals; } ;
typedef  TYPE_1__ SendCmdContext ;
typedef  TYPE_2__ Interval ;
typedef  TYPE_3__ Command ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVFILTER_CMD_FLAG_ONE ; 
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 scalar_t__ COMMAND_FLAG_ENTER ; 
 scalar_t__ COMMAND_FLAG_LEAVE ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *ref)
{
    AVFilterContext *ctx = inlink->dst;
    SendCmdContext *s = ctx->priv;
    int64_t ts;
    int i, j, ret;

    if (ref->pts == AV_NOPTS_VALUE)
        goto end;

    ts = FUNC4(ref->pts, inlink->time_base, AV_TIME_BASE_Q);

#define WITHIN_INTERVAL(ts, start_ts, end_ts) ((ts) >= (start_ts) && (ts) < (end_ts))

    for (i = 0; i < s->nb_intervals; i++) {
        Interval *interval = &s->intervals[i];
        int flags = 0;

        if (!interval->enabled && WITHIN_INTERVAL(ts, interval->start_ts, interval->end_ts)) {
            flags += COMMAND_FLAG_ENTER;
            interval->enabled = 1;
        }
        if (interval->enabled && !WITHIN_INTERVAL(ts, interval->start_ts, interval->end_ts)) {
            flags += COMMAND_FLAG_LEAVE;
            interval->enabled = 0;
        }

        if (flags) {
            AVBPrint pbuf;
            FUNC3(ctx, AV_LOG_VERBOSE,
                   "[%s] interval #%d start_ts:%f end_ts:%f ts:%f\n",
                   FUNC7(&pbuf, flags), interval->index,
                   (double)interval->start_ts/1000000, (double)interval->end_ts/1000000,
                   (double)ts/1000000);

            for (j = 0; flags && j < interval->nb_commands; j++) {
                Command *cmd = &interval->commands[j];
                char buf[1024];

                if (cmd->flags & flags) {
                    FUNC3(ctx, AV_LOG_VERBOSE,
                           "Processing command #%d target:%s command:%s arg:%s\n",
                           cmd->index, cmd->target, cmd->command, cmd->arg);
                    ret = FUNC5(inlink->graph,
                                                      cmd->target, cmd->command, cmd->arg,
                                                      buf, sizeof(buf),
                                                      AVFILTER_CMD_FLAG_ONE);
                    FUNC3(ctx, AV_LOG_VERBOSE,
                           "Command reply for command #%d: ret:%s res:%s\n",
                           cmd->index, FUNC2(ret), buf);
                }
            }
        }
    }

end:
    switch (inlink->type) {
    case AVMEDIA_TYPE_VIDEO:
    case AVMEDIA_TYPE_AUDIO:
        return FUNC6(inlink->dst->outputs[0], ref);
    }

    return FUNC0(ENOSYS);
}