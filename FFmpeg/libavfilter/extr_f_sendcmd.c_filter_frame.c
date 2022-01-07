
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int buf ;
struct TYPE_16__ {int * outputs; TYPE_1__* priv; } ;
struct TYPE_15__ {int type; TYPE_6__* dst; int graph; int time_base; } ;
struct TYPE_14__ {scalar_t__ pts; } ;
struct TYPE_13__ {int flags; int index; int arg; int command; int target; } ;
struct TYPE_12__ {int enabled; int nb_commands; TYPE_3__* commands; scalar_t__ end_ts; scalar_t__ start_ts; int index; } ;
struct TYPE_11__ {int nb_intervals; TYPE_2__* intervals; } ;
typedef TYPE_1__ SendCmdContext ;
typedef TYPE_2__ Interval ;
typedef TYPE_3__ Command ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;
typedef int AVBPrint ;


 int AVERROR (int ) ;
 int AVFILTER_CMD_FLAG_ONE ;


 int AV_LOG_VERBOSE ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 scalar_t__ COMMAND_FLAG_ENTER ;
 scalar_t__ COMMAND_FLAG_LEAVE ;
 int ENOSYS ;
 scalar_t__ WITHIN_INTERVAL (scalar_t__,scalar_t__,scalar_t__) ;
 int av_err2str (int) ;
 int av_log (TYPE_6__*,int ,char*,int ,int ,...) ;
 scalar_t__ av_rescale_q (scalar_t__,int ,int ) ;
 int avfilter_graph_send_command (int ,int ,int ,int ,char*,int,int ) ;
 int ff_filter_frame (int ,TYPE_4__*) ;
 int make_command_flags_str (int *,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *ref)
{
    AVFilterContext *ctx = inlink->dst;
    SendCmdContext *s = ctx->priv;
    int64_t ts;
    int i, j, ret;

    if (ref->pts == AV_NOPTS_VALUE)
        goto end;

    ts = av_rescale_q(ref->pts, inlink->time_base, AV_TIME_BASE_Q);



    for (i = 0; i < s->nb_intervals; i++) {
        Interval *interval = &s->intervals[i];
        int flags = 0;

        if (!interval->enabled && ((ts) >= (interval->start_ts) && (ts) < (interval->end_ts))) {
            flags += COMMAND_FLAG_ENTER;
            interval->enabled = 1;
        }
        if (interval->enabled && !((ts) >= (interval->start_ts) && (ts) < (interval->end_ts))) {
            flags += COMMAND_FLAG_LEAVE;
            interval->enabled = 0;
        }

        if (flags) {
            AVBPrint pbuf;
            av_log(ctx, AV_LOG_VERBOSE,
                   "[%s] interval #%d start_ts:%f end_ts:%f ts:%f\n",
                   make_command_flags_str(&pbuf, flags), interval->index,
                   (double)interval->start_ts/1000000, (double)interval->end_ts/1000000,
                   (double)ts/1000000);

            for (j = 0; flags && j < interval->nb_commands; j++) {
                Command *cmd = &interval->commands[j];
                char buf[1024];

                if (cmd->flags & flags) {
                    av_log(ctx, AV_LOG_VERBOSE,
                           "Processing command #%d target:%s command:%s arg:%s\n",
                           cmd->index, cmd->target, cmd->command, cmd->arg);
                    ret = avfilter_graph_send_command(inlink->graph,
                                                      cmd->target, cmd->command, cmd->arg,
                                                      buf, sizeof(buf),
                                                      AVFILTER_CMD_FLAG_ONE);
                    av_log(ctx, AV_LOG_VERBOSE,
                           "Command reply for command #%d: ret:%s res:%s\n",
                           cmd->index, av_err2str(ret), buf);
                }
            }
        }
    }

end:
    switch (inlink->type) {
    case 128:
    case 129:
        return ff_filter_frame(inlink->dst->outputs[0], ref);
    }

    return AVERROR(ENOSYS);
}
