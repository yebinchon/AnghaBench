#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_16__ {int flags; int /*<<< orphan*/  (* req_cb ) (TYPE_1__*) ;void* state; int /*<<< orphan*/  (* done_cb ) (TYPE_1__*) ;struct TYPE_16__* next; int /*<<< orphan*/  (* res_cb ) (TYPE_1__*) ;int /*<<< orphan*/  (* init_cb ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int DSPTASK_CANCEL ; 
 void* DSPTASK_DONE ; 
 void* DSPTASK_RUN ; 
 void* DSPTASK_YIELD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* __dsp_currtask ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* __dsp_firsttask ; 
 TYPE_1__* __dsp_lasttask ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* __dsp_rudetask ; 
 int /*<<< orphan*/  __dsp_rudetask_pend ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC14()
{
	u32 mail;
	while(!FUNC0());

	mail = FUNC2();
	if(__dsp_currtask->flags&DSPTASK_CANCEL) {
		if(mail==0xDCD10002) mail = 0xDCD10003;
	}

	switch(mail) {
		case 0xDCD10000:
			__dsp_currtask->state = DSPTASK_RUN;
			if(__dsp_currtask->init_cb) __dsp_currtask->init_cb(__dsp_currtask);
			break;
		case 0xDCD10001:
			__dsp_currtask->state = DSPTASK_RUN;
			if(__dsp_currtask->res_cb) __dsp_currtask->res_cb(__dsp_currtask);
			break;
		case 0xDCD10002:
			if(__dsp_rudetask_pend==TRUE) {
				if(__dsp_rudetask==__dsp_currtask) {
					FUNC3(0xCDD10003);
					while(FUNC1());

					__dsp_rudetask = NULL;
					__dsp_rudetask_pend = FALSE;
					if(__dsp_currtask->res_cb) __dsp_currtask->res_cb(__dsp_currtask);
				} else {
					FUNC3(0xCDD10001);
					while(FUNC1());

					FUNC4(__dsp_currtask,__dsp_rudetask);
					__dsp_currtask->flags = DSPTASK_YIELD;
					__dsp_currtask = __dsp_rudetask;
					__dsp_rudetask = NULL;
					__dsp_rudetask_pend = FALSE;
				}
			} else if(__dsp_currtask->next==NULL) {
				if(__dsp_firsttask==__dsp_currtask) {
					FUNC3(0xCDD10003);
					while(FUNC1());

					if(__dsp_currtask->res_cb) __dsp_currtask->res_cb(__dsp_currtask);
				} else {
					FUNC3(0xCDD10001);
					while(FUNC1());

					FUNC4(__dsp_currtask,__dsp_firsttask);
					__dsp_currtask->state = DSPTASK_YIELD;
					__dsp_currtask = __dsp_firsttask;
				}
			} else {
				FUNC3(0xCDD10001);
				while(FUNC1());

				FUNC4(__dsp_currtask,__dsp_currtask->next);
				__dsp_currtask->state = DSPTASK_YIELD;
				__dsp_currtask = __dsp_currtask->next;
			}
			break;
		case 0xDCD10003:
			if(__dsp_rudetask_pend==TRUE) {
				if(__dsp_currtask->done_cb) __dsp_currtask->done_cb(__dsp_currtask);
				FUNC3(0xCDD10001);
				while(FUNC1());

				FUNC4(NULL,__dsp_rudetask);
				FUNC5(__dsp_currtask);

				__dsp_currtask = __dsp_rudetask;
				__dsp_rudetask_pend = FALSE;
				__dsp_rudetask = NULL;
			} else if(__dsp_currtask->next==NULL) {
				if(__dsp_firsttask==__dsp_currtask) {
					if(__dsp_currtask->done_cb) __dsp_currtask->done_cb(__dsp_currtask);
					FUNC3(0xCDD10002);
					while(FUNC1());

					__dsp_currtask->state = DSPTASK_DONE;
					FUNC5(__dsp_currtask);
				}
			} else {
				if(__dsp_currtask->done_cb) __dsp_currtask->done_cb(__dsp_currtask);

				FUNC3(0xCDD10001);
				while(FUNC1());

				__dsp_currtask->state = DSPTASK_DONE;
				FUNC4(NULL,__dsp_firsttask);
				__dsp_currtask = __dsp_firsttask;
				FUNC5(__dsp_lasttask);
			}
			break;
		case 0xDCD10004:
			if(__dsp_currtask->req_cb) __dsp_currtask->req_cb(__dsp_currtask);
			break;
	}

}