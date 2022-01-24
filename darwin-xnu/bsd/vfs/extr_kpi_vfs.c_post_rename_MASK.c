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
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int NOTE_DELETE ; 
 int NOTE_LINK ; 
 int NOTE_RENAME ; 
 int NOTE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static errno_t
FUNC3(vnode_t fdvp, vnode_t fvp, vnode_t tdvp, vnode_t tvp)
{
	if (tvp && tvp != fvp)
		FUNC2(tvp);

	/* Wrote at least one directory.  If transplanted a dir, also changed link counts */
	int events = NOTE_WRITE;
	if (FUNC1(fvp)) {
		/* Link count on dir changed only if we are moving a dir and...
		 * 	--Moved to new dir, not overwriting there
		 * 	--Kept in same dir and DID overwrite
		 */
		if (((fdvp != tdvp) && (!tvp)) || ((fdvp == tdvp) && (tvp))) {
			events |= NOTE_LINK;
		}
	}

	FUNC0(fdvp, events);
	if (fdvp != tdvp) {
		FUNC0(tdvp,  events);
	}

	/* If you're replacing the target, post a deletion for it */
	if (tvp)
	{
		FUNC0(tvp, NOTE_DELETE);
	}

	FUNC0(fvp, NOTE_RENAME);

	return 0;
}