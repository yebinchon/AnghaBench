#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ubyte ;
struct wiimote_t {int /*<<< orphan*/  cmdq; int /*<<< orphan*/  event; struct cmd_blk_t* cmd_head; } ;
struct cmd_blk_t {scalar_t__ state; scalar_t__* data; int /*<<< orphan*/  node; int /*<<< orphan*/  (* cb ) (struct wiimote_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;struct cmd_blk_t* next; } ;

/* Variables and functions */
 scalar_t__ CMD_DONE ; 
 scalar_t__ CMD_SENT ; 
 int /*<<< orphan*/  WIIUSE_ACK ; 
 scalar_t__ WM_CMD_CTRL_STATUS ; 
 scalar_t__ WM_CMD_READ_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_t*) ; 

__attribute__((used)) static void FUNC4(struct wiimote_t *wm,ubyte *msg)
{
	struct cmd_blk_t *cmd = wm->cmd_head;

	FUNC2(wm,msg);

	if(!cmd || cmd->state!=CMD_SENT || cmd->data[0]==WM_CMD_READ_DATA || cmd->data[0]==WM_CMD_CTRL_STATUS || cmd->data[0]!=msg[2] || msg[3]) {
		//WIIUSE_WARNING("Unsolicited event ack: report %02x status %02x", msg[2], msg[3]);
		return;
	}

	//WIIUSE_DEBUG("Received ack for command %02x %02x", cmd->data[0], cmd->data[1]);

	wm->cmd_head = cmd->next;

	wm->event = WIIUSE_ACK;
	cmd->state = CMD_DONE;
	if(cmd->cb) cmd->cb(wm,NULL,0);

	FUNC0(&wm->cmdq,&cmd->node);
	FUNC3(wm);
}