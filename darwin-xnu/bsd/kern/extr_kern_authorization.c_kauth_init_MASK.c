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
typedef  int /*<<< orphan*/  lck_grp_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kauth_dangling_listeners ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * kauth_lck_grp ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  kauth_scopes ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(void)
{
	lck_grp_attr_t	*grp_attributes;

	FUNC0(&kauth_scopes);
	FUNC0(&kauth_dangling_listeners);

	/* set up our lock group */
	grp_attributes = FUNC7();
	kauth_lck_grp = FUNC6("kauth", grp_attributes);
	FUNC8(grp_attributes);

	/* bring up kauth subsystem components */
	FUNC1();
#if CONFIG_EXT_RESOLVER
	kauth_identity_init();
	kauth_groups_init();
#endif
	FUNC5();
#if CONFIG_EXT_RESOLVER
	kauth_resolver_init();
#endif
	/* can't alloc locks after this */
	FUNC9(kauth_lck_grp);
	kauth_lck_grp = NULL;
}