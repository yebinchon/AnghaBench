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
typedef  int ubyte ;
struct wiimote_t {int /*<<< orphan*/  cmdq; } ;
struct cmd_blk_t {int len; int* data; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  cmd_blk_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*) ; 
 int WM_CMD_STREAM_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,struct cmd_blk_t*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

int FUNC4(struct wiimote_t *wm,ubyte *data,ubyte len,cmd_blk_cb cb)
{
	struct cmd_blk_t *cmd;

	if(!wm || !FUNC0(wm)) return 0;
	if(!data || !len || len>20) return 0;

	cmd = (struct cmd_blk_t*)FUNC1(&wm->cmdq);
	if(!cmd) return 0;

	cmd->cb = cb;
	cmd->len = 22;
	cmd->data[0] = WM_CMD_STREAM_DATA;
	cmd->data[1] = (len<<3);
	FUNC3(cmd->data+2,data,len);
	FUNC2(wm,cmd);

	return 1;
}