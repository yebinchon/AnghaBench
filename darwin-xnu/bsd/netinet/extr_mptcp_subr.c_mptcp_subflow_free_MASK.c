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
struct mptsub {scalar_t__ mpts_refcnt; int mpts_flags; int /*<<< orphan*/ * mpts_src; int /*<<< orphan*/ * mpts_socket; int /*<<< orphan*/ * mpts_mpte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MPTSF_ATTACHED ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  mptsub_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mptsub*) ; 

__attribute__((used)) static void
FUNC3(struct mptsub *mpts)
{
	FUNC1(mpts->mpts_refcnt == 0);
	FUNC1(!(mpts->mpts_flags & MPTSF_ATTACHED));
	FUNC1(mpts->mpts_mpte == NULL);
	FUNC1(mpts->mpts_socket == NULL);

	if (mpts->mpts_src != NULL) {
		FUNC0(mpts->mpts_src, M_SONAME);
		mpts->mpts_src = NULL;
	}

	FUNC2(mptsub_zone, mpts);
}