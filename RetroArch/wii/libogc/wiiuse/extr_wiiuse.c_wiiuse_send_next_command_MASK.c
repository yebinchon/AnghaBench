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
struct wiimote_t {struct cmd_blk_t* cmd_head; } ;
struct cmd_blk_t {scalar_t__ state; int* data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 scalar_t__ CMD_READY ; 
 scalar_t__ CMD_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*) ; 
 scalar_t__ FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_RUMBLE ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*,int*,int /*<<< orphan*/ ) ; 

void FUNC3(struct wiimote_t *wm)
{
	struct cmd_blk_t *cmd = wm->cmd_head;

	if(!wm || !FUNC0(wm)) return;

	if(!cmd) return;
	if(cmd->state!=CMD_READY) return;

	cmd->state = CMD_SENT;
#ifdef HAVE_WIIUSE_RUMBLE
	if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_RUMBLE)) cmd->data[1] |= 0x01;
#endif

	//WIIUSE_DEBUG("Sending command: %02x %02x", cmd->data[0], cmd->data[1]);
	FUNC2(wm,cmd->data,cmd->len);
}