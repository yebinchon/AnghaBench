#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd_buf ;
struct TYPE_10__ {int /*<<< orphan*/  command_count; int /*<<< orphan*/  responder; } ;
typedef  TYPE_1__ ZMQContext ;
struct TYPE_13__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_12__ {int /*<<< orphan*/  graph; TYPE_4__* dst; } ;
struct TYPE_11__ {char* target; char* command; char* arg; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ Command ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVFILTER_CMD_FLAG_ONE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,char**,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *ref)
{
    AVFilterContext *ctx = inlink->dst;
    ZMQContext *zmq = ctx->priv;

    while (1) {
        char cmd_buf[1024];
        char *recv_buf, *send_buf;
        int recv_buf_size;
        Command cmd = {0};
        int ret;

        /* receive command */
        if (FUNC8(ctx, &recv_buf, &recv_buf_size) < 0)
            break;
        zmq->command_count++;

        /* parse command */
        if (FUNC7(&cmd, recv_buf, ctx) < 0) {
            FUNC4(ctx, AV_LOG_ERROR, "Could not parse command #%d\n", zmq->command_count);
            goto end;
        }

        /* process command */
        FUNC4(ctx, AV_LOG_VERBOSE,
               "Processing command #%d target:%s command:%s arg:%s\n",
               zmq->command_count, cmd.target, cmd.command, cmd.arg);
        ret = FUNC5(inlink->graph,
                                          cmd.target, cmd.command, cmd.arg,
                                          cmd_buf, sizeof(cmd_buf),
                                          AVFILTER_CMD_FLAG_ONE);
        send_buf = FUNC1("%d %s%s%s",
                               -ret, FUNC2(ret), cmd_buf[0] ? "\n" : "", cmd_buf);
        if (!send_buf) {
            ret = FUNC0(ENOMEM);
            goto end;
        }
        FUNC4(ctx, AV_LOG_VERBOSE,
               "Sending command reply for command #%d:\n%s\n",
               zmq->command_count, send_buf);
        if (FUNC10(zmq->responder, send_buf, FUNC9(send_buf), 0) == -1)
            FUNC4(ctx, AV_LOG_ERROR, "Failed to send reply for command #%d: %s\n",
                   zmq->command_count, FUNC11(ret));

    end:
        FUNC3(&send_buf);
        FUNC3(&recv_buf);
        recv_buf_size = 0;
        FUNC3(&cmd.target);
        FUNC3(&cmd.command);
        FUNC3(&cmd.arg);
    }

    return FUNC6(ctx->outputs[0], ref);
}