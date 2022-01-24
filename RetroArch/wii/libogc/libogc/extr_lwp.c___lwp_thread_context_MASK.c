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
typedef  int /*<<< orphan*/  lwp_t ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ lwp_cntrl ;
typedef  int /*<<< orphan*/  frame_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _lwp_thr_objects ; 

frame_context* FUNC3(lwp_t thr_id)
{
	lwp_cntrl *thethread;
	frame_context *pctx = NULL;

	FUNC0(thr_id);
	thethread = (lwp_cntrl*)FUNC2(&_lwp_thr_objects,FUNC1(thr_id));
	if(thethread) pctx = &thethread->context;

	return pctx;
}