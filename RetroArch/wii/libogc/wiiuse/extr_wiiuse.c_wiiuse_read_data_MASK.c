#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uword ;
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  ubyte ;
struct wiimote_t {int /*<<< orphan*/  cmdq; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;
struct op_t {TYPE_1__ readdata; scalar_t__ wait; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  cmd; } ;
struct cmd_blk_t {int len; scalar_t__ data; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  cmd_blk_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*) ; 
 int /*<<< orphan*/  WM_CMD_READ_DATA ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_t*,struct cmd_blk_t*) ; 

int FUNC5(struct wiimote_t *wm,ubyte *buffer,uint addr,uword len,cmd_blk_cb cb)
{
	struct op_t *op;
	struct cmd_blk_t *cmd;

	if(!wm || !FUNC2(wm)) return 0;
	if(!buffer || !len) return 0;

	cmd = (struct cmd_blk_t*)FUNC3(&wm->cmdq);
	if(!cmd) return 0;

	cmd->cb = cb;
	cmd->len = 7;

	op = (struct op_t*)cmd->data;
	op->cmd = WM_CMD_READ_DATA;
	op->buffer = buffer;
	op->wait = len;
	op->readdata.addr = FUNC0(addr);
	op->readdata.size = FUNC1(len);
	FUNC4(wm,cmd);

	return 1;
}