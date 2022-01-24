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
typedef  int /*<<< orphan*/  uint ;
struct wiimote_t {struct cmd_blk_t* cmd_tail; struct cmd_blk_t* cmd_head; } ;
struct cmd_blk_t {struct cmd_blk_t* next; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_t*) ; 

__attribute__((used)) static inline void FUNC3(struct wiimote_t *wm,struct cmd_blk_t *cmd)
{
	uint level;

	if(!wm || !cmd) return;

	cmd->next = NULL;
	cmd->state = CMD_READY;

	FUNC0(level);
	if(wm->cmd_head==NULL) {
		wm->cmd_head = wm->cmd_tail = cmd;
		FUNC2(wm);
	} else {
		wm->cmd_tail->next = cmd;
		wm->cmd_tail = cmd;
	}
	FUNC1(level);
}