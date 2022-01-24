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
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/ * host_priv_t ;
typedef  int boolean_t ;
struct TYPE_4__ {int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int TH_OPT_VMPRIV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  realhost ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

kern_return_t
FUNC3(
	host_priv_t		host_priv,
	thread_t		thread,
	boolean_t		wired,
	boolean_t		*prev_state)
{
	if (host_priv == NULL || thread != FUNC1())
		return (KERN_INVALID_ARGUMENT);

	FUNC0(host_priv == &realhost);

	if (prev_state)
	    *prev_state = (thread->options & TH_OPT_VMPRIV) != 0;
	
	if (wired) {
	    if (!(thread->options & TH_OPT_VMPRIV)) 
		    FUNC2(1);	/* XXX */
	    thread->options |= TH_OPT_VMPRIV;
	}
	else {
	    if (thread->options & TH_OPT_VMPRIV) 
		    FUNC2(-1);	/* XXX */
	    thread->options &= ~TH_OPT_VMPRIV;
	}

	return (KERN_SUCCESS);
}