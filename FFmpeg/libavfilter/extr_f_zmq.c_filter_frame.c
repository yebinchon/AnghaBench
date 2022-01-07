
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int cmd_buf ;
struct TYPE_10__ {int command_count; int responder; } ;
typedef TYPE_1__ ZMQContext ;
struct TYPE_13__ {int * outputs; TYPE_1__* priv; } ;
struct TYPE_12__ {int graph; TYPE_4__* dst; } ;
struct TYPE_11__ {char* target; char* command; char* arg; int member_0; } ;
typedef TYPE_2__ Command ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVFILTER_CMD_FLAG_ONE ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int ENOMEM ;
 char* av_asprintf (char*,int,int ,char*,char*) ;
 int av_err2str (int) ;
 int av_freep (char**) ;
 int av_log (TYPE_4__*,int ,char*,int ,...) ;
 int avfilter_graph_send_command (int ,char*,char*,char*,char*,int,int ) ;
 int ff_filter_frame (int ,int *) ;
 scalar_t__ parse_command (TYPE_2__*,char*,TYPE_4__*) ;
 scalar_t__ recv_msg (TYPE_4__*,char**,int*) ;
 int strlen (char*) ;
 int zmq_send (int ,char*,int ,int ) ;
 char* zmq_strerror (int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *ref)
{
    AVFilterContext *ctx = inlink->dst;
    ZMQContext *zmq = ctx->priv;

    while (1) {
        char cmd_buf[1024];
        char *recv_buf, *send_buf;
        int recv_buf_size;
        Command cmd = {0};
        int ret;


        if (recv_msg(ctx, &recv_buf, &recv_buf_size) < 0)
            break;
        zmq->command_count++;


        if (parse_command(&cmd, recv_buf, ctx) < 0) {
            av_log(ctx, AV_LOG_ERROR, "Could not parse command #%d\n", zmq->command_count);
            goto end;
        }


        av_log(ctx, AV_LOG_VERBOSE,
               "Processing command #%d target:%s command:%s arg:%s\n",
               zmq->command_count, cmd.target, cmd.command, cmd.arg);
        ret = avfilter_graph_send_command(inlink->graph,
                                          cmd.target, cmd.command, cmd.arg,
                                          cmd_buf, sizeof(cmd_buf),
                                          AVFILTER_CMD_FLAG_ONE);
        send_buf = av_asprintf("%d %s%s%s",
                               -ret, av_err2str(ret), cmd_buf[0] ? "\n" : "", cmd_buf);
        if (!send_buf) {
            ret = AVERROR(ENOMEM);
            goto end;
        }
        av_log(ctx, AV_LOG_VERBOSE,
               "Sending command reply for command #%d:\n%s\n",
               zmq->command_count, send_buf);
        if (zmq_send(zmq->responder, send_buf, strlen(send_buf), 0) == -1)
            av_log(ctx, AV_LOG_ERROR, "Failed to send reply for command #%d: %s\n",
                   zmq->command_count, zmq_strerror(ret));

    end:
        av_freep(&send_buf);
        av_freep(&recv_buf);
        recv_buf_size = 0;
        av_freep(&cmd.target);
        av_freep(&cmd.command);
        av_freep(&cmd.arg);
    }

    return ff_filter_frame(ctx->outputs[0], ref);
}
