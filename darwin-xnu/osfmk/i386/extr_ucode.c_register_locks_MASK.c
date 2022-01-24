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
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NO_SPACE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ ucode_slock ; 
 scalar_t__ ucode_slock_attr ; 
 scalar_t__ ucode_slock_grp ; 
 scalar_t__ ucode_slock_grp_attr ; 

__attribute__((used)) static kern_return_t
FUNC9(void)
{
	/* already allocated? */
	if (ucode_slock_grp_attr && ucode_slock_grp && ucode_slock_attr && ucode_slock)
		return KERN_SUCCESS;

	/* allocate lock group attribute and group */
	if (!(ucode_slock_grp_attr = FUNC3()))
		goto nomem_out;

	FUNC5(ucode_slock_grp_attr);

	if (!(ucode_slock_grp = FUNC2("uccode_lock", ucode_slock_grp_attr)))
		goto nomem_out;

	/* Allocate lock attribute */
	if (!(ucode_slock_attr = FUNC0()))
		goto nomem_out;

	/* Allocate the spin lock */
	/* We keep one global spin-lock. We could have one per update
	 * request... but srsly, why would you update microcode like that?
	 */
	if (!(ucode_slock = FUNC7(ucode_slock_grp, ucode_slock_attr)))
		goto nomem_out;

	return KERN_SUCCESS;

nomem_out:
	/* clean up */
	if (ucode_slock)
		FUNC8(ucode_slock, ucode_slock_grp);
	if (ucode_slock_attr)
		FUNC1(ucode_slock_attr);
	if (ucode_slock_grp)
		FUNC6(ucode_slock_grp);
	if (ucode_slock_grp_attr)
		FUNC4(ucode_slock_grp_attr);

	return KERN_NO_SPACE;
}