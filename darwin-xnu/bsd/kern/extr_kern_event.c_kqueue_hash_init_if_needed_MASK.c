#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct kqlist {int dummy; } ;
struct filedesc {int /*<<< orphan*/  fd_kqhashmask; struct kqlist* fd_kqhash; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_6__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_KQ_HASHSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct kqlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_KQUEUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct kqlist* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(proc_t p)
{
	struct filedesc *fdp = p->p_fd;

	FUNC4(p);

	if (FUNC1(fdp->fd_kqhash == NULL)) {
		struct kqlist *alloc_hash;
		u_long alloc_mask;

		FUNC5(p);
		alloc_hash = FUNC2(CONFIG_KQ_HASHSIZE, M_KQUEUE, &alloc_mask);
		FUNC3(p);

		/* See if we won the race */
		if (fdp->fd_kqhashmask == 0) {
			fdp->fd_kqhash = alloc_hash;
			fdp->fd_kqhashmask = alloc_mask;
		} else {
			FUNC5(p);
			FUNC0(alloc_hash, M_KQUEUE);
			FUNC3(p);
		}
	}
}