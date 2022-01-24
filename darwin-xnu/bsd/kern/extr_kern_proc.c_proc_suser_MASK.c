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
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_acflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(proc_t p)
{
	kauth_cred_t my_cred;
	int error;

	my_cred = FUNC0(p);
	error = FUNC2(my_cred, &p->p_acflag);
	FUNC1(&my_cred);
	return(error);
}