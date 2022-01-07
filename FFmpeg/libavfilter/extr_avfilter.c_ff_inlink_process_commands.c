
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* command_queue; } ;
struct TYPE_11__ {int time; int flags; int arg; int command; } ;
struct TYPE_10__ {TYPE_6__* dst; int time_base; } ;
struct TYPE_9__ {int pts; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterCommand ;


 int AV_LOG_DEBUG ;
 int av_log (TYPE_6__*,int ,char*,int,int ,int ) ;
 int av_q2d (int ) ;
 int avfilter_process_command (TYPE_6__*,int ,int ,int ,int ,int ) ;
 int ff_command_queue_pop (TYPE_6__*) ;

int ff_inlink_process_commands(AVFilterLink *link, const AVFrame *frame)
{
    AVFilterCommand *cmd = link->dst->command_queue;

    while(cmd && cmd->time <= frame->pts * av_q2d(link->time_base)){
        av_log(link->dst, AV_LOG_DEBUG,
               "Processing command time:%f command:%s arg:%s\n",
               cmd->time, cmd->command, cmd->arg);
        avfilter_process_command(link->dst, cmd->command, cmd->arg, 0, 0, cmd->flags);
        ff_command_queue_pop(link->dst);
        cmd= link->dst->command_queue;
    }
    return 0;
}
