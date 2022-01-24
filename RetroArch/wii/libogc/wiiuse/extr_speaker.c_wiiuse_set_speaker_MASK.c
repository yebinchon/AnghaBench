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
struct wiimote_t {int /*<<< orphan*/  unid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_STATE_HANDSHAKE_COMPLETE ; 
 int /*<<< orphan*/  WIIMOTE_STATE_SPEAKER ; 
 int /*<<< orphan*/  WIIMOTE_STATE_SPEAKER_INIT ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  WM_CMD_SPEAKER_ENABLE ; 
 int /*<<< orphan*/  WM_CMD_SPEAKER_MUTE ; 
 int /*<<< orphan*/  WM_REG_SPEAKER_BLOCK ; 
 int /*<<< orphan*/  WM_REG_SPEAKER_REG1 ; 
 int /*<<< orphan*/  WM_REG_SPEAKER_REG2 ; 
 int /*<<< orphan*/  WM_REG_SPEAKER_REG3 ; 
 int /*<<< orphan*/  __wiiuse_speaker_defconf ; 
 int __wiiuse_speaker_vol ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_t*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_t*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *) ; 

void FUNC8(struct wiimote_t *wm,int status)
{
	ubyte conf[7];
	ubyte buf = 0x00;

	if(!wm) return;

	if(!FUNC2(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE)) {
		FUNC3("Tried to enable speaker, will wait until handshake finishes.\n");
		if(status)
			FUNC1(wm, WIIMOTE_STATE_SPEAKER_INIT);
		else
			FUNC0(wm, WIIMOTE_STATE_SPEAKER_INIT);
		return;
	}

	if(status) {
		if(FUNC2(wm,WIIMOTE_STATE_SPEAKER)) {
			FUNC6(wm,NULL);
			return;
		}
	} else {
		if(!FUNC2(wm,WIIMOTE_STATE_SPEAKER)) {
			FUNC6(wm,NULL);
			return;
		}
	}

	buf = 0x04;
	FUNC5(wm,WM_CMD_SPEAKER_MUTE,&buf,1,NULL);

	if (!status) {
		FUNC3("Disabled speaker for wiimote id %i.", wm->unid);

		buf = 0x01;
		FUNC7(wm,WM_REG_SPEAKER_REG1,&buf,1,NULL);

		buf = 0x00;
		FUNC7(wm,WM_REG_SPEAKER_REG3,&buf,1,NULL);

		buf = 0x00;
		FUNC5(wm,WM_CMD_SPEAKER_ENABLE,&buf,1,NULL);

		FUNC6(wm,NULL);
		return;
	}

	FUNC4(conf,__wiiuse_speaker_defconf,7);

	buf = 0x04;
	FUNC5(wm,WM_CMD_SPEAKER_ENABLE,&buf,1,NULL);

	buf = 0x01;
	FUNC7(wm,WM_REG_SPEAKER_REG3,&buf,1,NULL);

	buf = 0x08;
	FUNC7(wm,WM_REG_SPEAKER_REG1,&buf,1,NULL);

	conf[2] = 0xd0;
	conf[3] = 0x07;
	conf[4] = __wiiuse_speaker_vol;
	FUNC7(wm,WM_REG_SPEAKER_BLOCK,conf,7,NULL);

	buf = 0x01;
	FUNC7(wm,WM_REG_SPEAKER_REG2,&buf,1,NULL);

	buf = 0x00;
	FUNC5(wm,WM_CMD_SPEAKER_MUTE,&buf,1,NULL);

	FUNC6(wm,NULL);
	return;
}