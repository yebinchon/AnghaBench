#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* command_queue; } ;
struct TYPE_11__ {int time; int /*<<< orphan*/  flags; int /*<<< orphan*/  arg; int /*<<< orphan*/  command; } ;
struct TYPE_10__ {TYPE_6__* dst; int /*<<< orphan*/  time_base; } ;
struct TYPE_9__ {int pts; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterCommand ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 

int FUNC4(AVFilterLink *link, const AVFrame *frame)
{
    AVFilterCommand *cmd = link->dst->command_queue;

    while(cmd && cmd->time <= frame->pts * FUNC1(link->time_base)){
        FUNC0(link->dst, AV_LOG_DEBUG,
               "Processing command time:%f command:%s arg:%s\n",
               cmd->time, cmd->command, cmd->arg);
        FUNC2(link->dst, cmd->command, cmd->arg, 0, 0, cmd->flags);
        FUNC3(link->dst);
        cmd= link->dst->command_queue;
    }
    return 0;
}