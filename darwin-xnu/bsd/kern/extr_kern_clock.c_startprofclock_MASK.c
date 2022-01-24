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
struct proc {int p_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int P_PROFIL ; 

void
FUNC1(struct proc *p)
{
	if ((p->p_flag & P_PROFIL) == 0)
		FUNC0(P_PROFIL, &p->p_flag);
}