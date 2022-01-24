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
typedef  TYPE_1__* vnode_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_5__ {int v_numoutput; int /*<<< orphan*/  v_lock; int /*<<< orphan*/  v_flag; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int NSEC_PER_USEC ; 
 int PDROP ; 
 int PRIBIO ; 
 int /*<<< orphan*/  VBWAIT ; 
 int /*<<< orphan*/  VTHROTTLED ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char const*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int
FUNC4(vnode_t vp, int output_target, int slpflag, int slptimeout, const char *msg) {
        int error = 0;
	struct timespec ts;

	FUNC0(0x3010280 | DBG_FUNC_START, (int)vp, output_target, vp->v_numoutput, 0, 0);

	if (vp->v_numoutput > output_target) {

	        slpflag |= PDROP;

	        FUNC2(vp);

		while ((vp->v_numoutput > output_target) && error == 0) {
		        if (output_target)
			        vp->v_flag |= VTHROTTLED;
			else
			        vp->v_flag |= VBWAIT;

			ts.tv_sec = (slptimeout/100);
			ts.tv_nsec = (slptimeout % 1000)  * 10 * NSEC_PER_USEC * 1000 ;
			error = FUNC1((caddr_t)&vp->v_numoutput, &vp->v_lock, (slpflag | (PRIBIO + 1)), msg, &ts);

			FUNC2(vp);
		}
		FUNC3(vp);
	}
	FUNC0(0x3010280 | DBG_FUNC_END, (int)vp, output_target, vp->v_numoutput, error, 0);

	return error;
}