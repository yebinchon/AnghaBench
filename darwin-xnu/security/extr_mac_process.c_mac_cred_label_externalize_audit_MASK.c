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
struct proc {int dummy; } ;
struct mac {int /*<<< orphan*/  m_buflen; int /*<<< orphan*/  m_string; } ;
typedef  TYPE_1__* kauth_cred_t ;
struct TYPE_4__ {int /*<<< orphan*/  cr_label; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cred ; 
 TYPE_1__* FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 

int
FUNC3(struct proc *p, struct mac *mac)
{
	kauth_cred_t cr;
	int error;

	cr = FUNC1(p);

	error = FUNC0(cred, cr->cr_label,
	    mac->m_string, mac->m_buflen);

	FUNC2(&cr);
	return (error);
}