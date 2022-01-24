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
typedef  int /*<<< orphan*/  uint ;
typedef  int ubyte ;
struct wiimote_t {int /*<<< orphan*/  cmdq; } ;
struct TYPE_2__ {int size; int data; int /*<<< orphan*/  addr; } ;
struct op_t {TYPE_1__ writedata; scalar_t__ wait; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  cmd; } ;
struct cmd_blk_t {int len; scalar_t__ data; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  cmd_blk_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*) ; 
 int /*<<< orphan*/  WM_CMD_WRITE_DATA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_t*,struct cmd_blk_t*) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct wiimote_t *wm,uint addr,ubyte *data,ubyte len,cmd_blk_cb cb)
{
	struct op_t *op;
	struct cmd_blk_t *cmd;

	if(!wm || !FUNC1(wm)) return 0;
	if(!data || !len) return 0;

	cmd = (struct cmd_blk_t*)FUNC2(&wm->cmdq);
	if(!cmd) return 0;

	cmd->cb = cb;
	cmd->len = 22;

	op = (struct op_t*)cmd->data;
	op->cmd = WM_CMD_WRITE_DATA;
	op->buffer = NULL;
	op->wait = 0;
	op->writedata.addr = FUNC0(addr);
	op->writedata.size = (len&0x0f);
	FUNC4(op->writedata.data,data,len);
	FUNC5(op->writedata.data+len,0,(16 - len));
	FUNC3(wm,cmd);

	return 1;
}