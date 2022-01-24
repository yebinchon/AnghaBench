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
typedef  int user_addr_t ;
typedef  int u_int32_t ;
struct kauth_ace {int dummy; } ;
typedef  TYPE_1__* kauth_filesec_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {scalar_t__ fsec_magic; int fsec_entrycount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ KAUTH_ACL_MAX_ENTRIES ; 
 scalar_t__ KAUTH_FILESEC_MAGIC ; 
 int KAUTH_FILESEC_NOACL ; 
 int FUNC1 (int) ; 
 int PAGE_MASK ; 
 int FUNC2 (int,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  opaque ; 

int
FUNC6(user_addr_t xsecurity, kauth_filesec_t *xsecdestpp)
{
	int error;
	kauth_filesec_t fsec;
	u_int32_t count;
	size_t copysize;
	
	error = 0;
	fsec = NULL;

	/*
	 * Make a guess at the size of the filesec.  We start with the base
	 * pointer, and look at how much room is left on the page, clipped
	 * to a sensible upper bound.  If it turns out this isn't enough,
	 * we'll size based on the actual ACL contents and come back again.
	 *
	 * The upper bound must be less than KAUTH_ACL_MAX_ENTRIES.  The
	 * value here is fairly arbitrary.  It's ok to have a zero count.
	 *
	 * Because we're just using these values to make a guess about the
	 * number of entries, the actual address doesn't matter, only their
	 * relative offsets into the page.  We take advantage of this to
	 * avoid an overflow in the rounding step (this is a user-provided
	 * parameter, so caution pays off).
	 */
	{
		user_addr_t known_bound = (xsecurity & PAGE_MASK) + FUNC1(0);
		user_addr_t uaddr = FUNC5(known_bound);
		count = (uaddr - known_bound) / sizeof(struct kauth_ace);
	}
	if (count > 32)
		count = 32;
restart:
	if ((fsec = FUNC3(count)) == NULL) {
		error = ENOMEM;
		goto out;
	}
	copysize = FUNC1(count);
	if ((error = FUNC2(xsecurity, (caddr_t)fsec, copysize)) != 0)
		goto out;

	/* validate the filesec header */
	if (fsec->fsec_magic != KAUTH_FILESEC_MAGIC) {
		error = EINVAL;
		goto out;
	}

	/*
	 * Is there an ACL payload, and is it too big?
	 */
	if ((fsec->fsec_entrycount != KAUTH_FILESEC_NOACL) &&
	    (fsec->fsec_entrycount > count)) {
		if (fsec->fsec_entrycount > KAUTH_ACL_MAX_ENTRIES) {
			/* XXX This should be E2BIG */
			error = EINVAL;
			goto out;
		}
		count = fsec->fsec_entrycount;
		FUNC4(fsec);
		goto restart;
	}
	
out:
	if (error) {
		if (fsec)
			FUNC4(fsec);
	} else {
		*xsecdestpp = fsec;
		FUNC0(opaque, fsec, copysize);
	}
	return(error);
}