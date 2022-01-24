#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* dtih_func ) (uintptr_t,uintptr_t*,uintptr_t) ;struct TYPE_4__* dtih_next; } ;
typedef  TYPE_1__ dtrace_invop_hdlr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* dtrace_invop_hdlr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(int (*func)(uintptr_t, uintptr_t *, uintptr_t))
{
	dtrace_invop_hdlr_t *hdlr = dtrace_invop_hdlr, *prev = NULL;

	for (;;) {
		if (hdlr == NULL)
			FUNC2("attempt to remove non-existent invop handler");

		if (hdlr->dtih_func == func)
			break;

		prev = hdlr;
		hdlr = hdlr->dtih_next;
	}

	if (prev == NULL) {
		FUNC0(dtrace_invop_hdlr == hdlr);
		dtrace_invop_hdlr = hdlr->dtih_next;
	} else {
		FUNC0(dtrace_invop_hdlr != hdlr);
		prev->dtih_next = hdlr->dtih_next;
	}

	FUNC1(hdlr, sizeof (dtrace_invop_hdlr_t));
}