#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int button; void* err; } ;
typedef  TYPE_1__ PADStatus ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* PAD_ERR_NONE ; 
 void* PAD_ERR_NOT_READY ; 
 void* PAD_ERR_NO_CONTROLLER ; 
 void* PAD_ERR_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SI_ERROR_NO_RESPONSE ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SI_WIRELESS_STATE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int __pad_checkingbits ; 
 int /*<<< orphan*/  __pad_cmdreadorigin ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int __pad_enabledbits ; 
 int /*<<< orphan*/  FUNC11 (int,int*,TYPE_1__*) ; 
 int /*<<< orphan*/ * __pad_origin ; 
 int /*<<< orphan*/  __pad_originupdatecallback ; 
 int __pad_pendingbits ; 
 int /*<<< orphan*/  __pad_receivecheckcallback ; 
 int __pad_resettingbits ; 
 int __pad_resettingchan ; 
 int __pad_waitingbits ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

u32 FUNC13(PADStatus *status)
{
	u32 chan,mask,ret;
	u32 level,sistatus,type;
	u32 buf[2];
	FUNC8(level);
	chan = 0;
	ret = 0;
	while(chan<4) {
		mask = FUNC0(chan);
		if(__pad_pendingbits&mask) {
			FUNC1(0);
			FUNC12(&status[chan],0,sizeof(PADStatus));
			status[chan].err = PAD_ERR_NOT_READY;
		} else if(__pad_resettingbits&mask || __pad_resettingchan==chan) {
			FUNC12(&status[chan],0,sizeof(PADStatus));
			status[chan].err = PAD_ERR_NOT_READY;
		} else if(!(__pad_enabledbits&mask)) {
			FUNC12(&status[chan],0,sizeof(PADStatus));
			status[chan].err = PAD_ERR_NO_CONTROLLER;
		} else {
			if(FUNC6(chan)) {
				FUNC12(&status[chan],0,sizeof(PADStatus));
				status[chan].err = PAD_ERR_TRANSFER;
			} else {
				sistatus = FUNC3(chan);
				if(sistatus&SI_ERROR_NO_RESPONSE) {
					FUNC2(chan,(void*)buf);
					if(!(__pad_waitingbits&mask)) {
						FUNC12(&status[chan],0,sizeof(PADStatus));
						status[chan].err = PAD_ERR_NONE;
						if(!(__pad_checkingbits&mask)) {
							__pad_checkingbits |= mask;
							FUNC5(chan,__pad_receivecheckcallback);
						}
					} else {
						FUNC10(chan);
						FUNC12(&status[chan],0,sizeof(PADStatus));
						status[chan].err = PAD_ERR_NO_CONTROLLER;
					}
				} else {
					type = FUNC4(chan);
					if(!(type&SI_WIRELESS_STATE)) ret |= mask;
					if(!FUNC2(chan,buf)
						|| buf[0]&0x80000000) {
						FUNC12(&status[chan],0,sizeof(PADStatus));
						status[chan].err = PAD_ERR_TRANSFER;
					} else {
						FUNC11(chan,buf,&status[chan]);
						if(status[chan].button&0x00002000) {
							FUNC12(&status[chan],0,sizeof(PADStatus));
							status[chan].err = PAD_ERR_TRANSFER;
							FUNC7(chan,&__pad_cmdreadorigin,1,__pad_origin[chan],10,__pad_originupdatecallback,0);
						} else {
							status[chan].err = PAD_ERR_NONE;
							status[chan].button &= ~0x80;
						}
					}
				}
			}
		}
		chan++;

	}
	FUNC9(level);

	return ret;
}