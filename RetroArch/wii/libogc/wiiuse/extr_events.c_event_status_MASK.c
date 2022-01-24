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
struct wiimote_t {int battery_level; int /*<<< orphan*/  cmdq; struct cmd_blk_t* cmd_head; int /*<<< orphan*/  event; } ;
struct cmd_blk_t {scalar_t__ state; scalar_t__* data; int /*<<< orphan*/  node; int /*<<< orphan*/  (* cb ) (struct wiimote_t*,int*,int) ;struct cmd_blk_t* next; } ;

/* Variables and functions */
 scalar_t__ CMD_DONE ; 
 scalar_t__ CMD_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP_FAILED ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP_HANDSHAKE ; 
 int /*<<< orphan*/  WIIMOTE_STATE_IR ; 
 int /*<<< orphan*/  WIIMOTE_STATE_IR_INIT ; 
 int /*<<< orphan*/  WIIMOTE_STATE_SPEAKER ; 
 int /*<<< orphan*/  WIIMOTE_STATE_SPEAKER_INIT ; 
 int /*<<< orphan*/  WIIUSE_STATUS ; 
 scalar_t__ WM_CMD_CTRL_STATUS ; 
 int WM_CTRL_STATUS_BYTE1_ATTACHMENT ; 
 int WM_CTRL_STATUS_BYTE1_IR_ENABLED ; 
 int WM_CTRL_STATUS_BYTE1_SPEAKER_ENABLED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_t*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_t*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct wiimote_t*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wiimote_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct wiimote_t*,int) ; 

__attribute__((used)) static void FUNC12(struct wiimote_t *wm,ubyte *msg)
{
	int ir = 0;
	int attachment = 0;
#ifdef HAVE_WIIUSE_SPEAKER
	int speaker = 0;
#endif
	//int led[4]= {0};
	struct cmd_blk_t *cmd = wm->cmd_head;

	FUNC7(wm,msg);

	wm->event = WIIUSE_STATUS;
	//if(msg[2]&WM_CTRL_STATUS_BYTE1_LED_1) led[0] = 1;
	//if(msg[2]&WM_CTRL_STATUS_BYTE1_LED_2) led[1] = 1;
	//if(msg[2]&WM_CTRL_STATUS_BYTE1_LED_3) led[2] = 1;
	//if(msg[2]&WM_CTRL_STATUS_BYTE1_LED_4) led[3] = 1;

	if((msg[2]&WM_CTRL_STATUS_BYTE1_ATTACHMENT)==WM_CTRL_STATUS_BYTE1_ATTACHMENT) attachment = 1;
#ifdef HAVE_WIIUSE_SPEAKER
	if((msg[2]&WM_CTRL_STATUS_BYTE1_SPEAKER_ENABLED)==WM_CTRL_STATUS_BYTE1_SPEAKER_ENABLED) speaker = 1;
#endif
	if((msg[2]&WM_CTRL_STATUS_BYTE1_IR_ENABLED)==WM_CTRL_STATUS_BYTE1_IR_ENABLED) ir = 1;

	wm->battery_level = msg[5];

	if(!ir && FUNC2(wm,WIIMOTE_STATE_IR_INIT)) {
		FUNC0(wm, WIIMOTE_STATE_IR_INIT);
		FUNC9(wm, 1);
		goto done;
	}
	if(ir && !FUNC2(wm,WIIMOTE_STATE_IR)) FUNC1(wm,WIIMOTE_STATE_IR);
	else if(!ir && FUNC2(wm,WIIMOTE_STATE_IR)) FUNC0(wm, WIIMOTE_STATE_IR);

#ifdef HAVE_WIIUSE_SPEAKER
	if(!speaker && WIIMOTE_IS_SET(wm,WIIMOTE_STATE_SPEAKER_INIT)) {
		WIIMOTE_DISABLE_STATE(wm,WIIMOTE_STATE_SPEAKER_INIT);
		wiiuse_set_speaker(wm,1);
		goto done;
	}
	if(speaker && !WIIMOTE_IS_SET(wm,WIIMOTE_STATE_SPEAKER)) WIIMOTE_ENABLE_STATE(wm,WIIMOTE_STATE_SPEAKER);
	else if(!speaker && WIIMOTE_IS_SET(wm,WIIMOTE_STATE_SPEAKER)) WIIMOTE_DISABLE_STATE(wm,WIIMOTE_STATE_SPEAKER);
#endif

	if(attachment) {
		if(!FUNC2(wm,WIIMOTE_STATE_EXP) && !FUNC2(wm,WIIMOTE_STATE_EXP_FAILED) && !FUNC2(wm,WIIMOTE_STATE_EXP_HANDSHAKE)) {
			FUNC6(wm);
			goto done;
		}
	} else {
		FUNC0(wm,WIIMOTE_STATE_EXP_FAILED);
		if(FUNC2(wm,WIIMOTE_STATE_EXP)) {
			FUNC5(wm);
			goto done;
		}
	}
	FUNC10(wm,NULL);

done:
	if(!cmd) return;
	if(!(cmd->state==CMD_SENT && cmd->data[0]==WM_CMD_CTRL_STATUS)) return;

	wm->cmd_head = cmd->next;

	cmd->state = CMD_DONE;
	if(cmd->cb!=NULL) cmd->cb(wm,msg,6);

	FUNC3(&wm->cmdq,&cmd->node);
	FUNC8(wm);
}