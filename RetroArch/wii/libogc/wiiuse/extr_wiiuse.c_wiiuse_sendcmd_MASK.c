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
struct wiimote_t {int /*<<< orphan*/  cmdq; } ;
struct cmd_blk_t {int len; int* data; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  cmd_blk_cb ;

/* Variables and functions */
 scalar_t__ WM_CMD_CTRL_STATUS ; 
 scalar_t__ WM_CMD_READ_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,struct cmd_blk_t*) ; 
 int /*<<< orphan*/  FUNC2 (int*,scalar_t__*,int) ; 

int FUNC3(struct wiimote_t *wm,ubyte report_type,ubyte *msg,int len,cmd_blk_cb cb)
{
	struct cmd_blk_t *cmd;

	cmd = (struct cmd_blk_t*)FUNC0(&wm->cmdq);
	if(!cmd) return 0;

	cmd->cb = cb;
	cmd->len = (1+len);

	cmd->data[0] = report_type;
	FUNC2(cmd->data+1,msg,len);
	if(report_type!=WM_CMD_READ_DATA && report_type!=WM_CMD_CTRL_STATUS)
		cmd->data[1] |= 0x02;

	//WIIUSE_DEBUG("Pushing command: %02x %02x", cmd->data[0], cmd->data[1]);
	FUNC1(wm,cmd);

	return 1;
}