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
struct session {int /*<<< orphan*/  s_sid; } ;
struct getsid_args {scalar_t__ pid; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct session* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct session*) ; 

int
FUNC4(proc_t p, struct getsid_args *uap, int32_t *retval)
{
	proc_t pt;
	int refheld = 0;
	struct session * sessp;

	pt = p;
	if (uap->pid == 0)
		goto found;

	if ((pt = FUNC0(uap->pid)) == 0)
		return (ESRCH);
	refheld = 1;
found:
	sessp = FUNC2(pt);
	*retval = sessp->s_sid;
	FUNC3(sessp);

	if (refheld != 0)
		FUNC1(pt);
	return (0);
}