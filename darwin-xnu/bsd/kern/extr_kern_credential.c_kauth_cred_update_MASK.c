#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* kauth_cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_19__ {scalar_t__ cr_ref; int /*<<< orphan*/  cr_audit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  M_CRED ; 
 TYPE_1__* NOCRED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**) ; 
 scalar_t__ FUNC12 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static kauth_cred_t
FUNC14(kauth_cred_t old_cred, kauth_cred_t model_cred,
	boolean_t retain_auditinfo)
{	
	kauth_cred_t found_cred, new_cred = NULL;
	
	/*
	 * Make sure we carry the auditinfo forward to the new credential
	 * unless we are actually updating the auditinfo.
	 */
	if (retain_auditinfo) {
		FUNC6(&old_cred->cr_audit, &model_cred->cr_audit, 
		    sizeof(model_cred->cr_audit));
	}
	
	for (;;) {
		int		err;

		FUNC3();
		found_cred = FUNC9(model_cred);
		if (found_cred == old_cred) {
			/* same cred so just bail */
			FUNC4();
			return(old_cred); 
		}
		if (found_cred != NULL) {
			boolean_t destroy_it;

			FUNC1("kauth_cred_update(cache hit): %p -> %p\n", old_cred, found_cred);
			/*
			 * Found a match so we bump reference count on new
			 * one and decrement reference count on the old one.
			 */
			FUNC10(found_cred);
			destroy_it = FUNC12(&old_cred);
			FUNC4();
			if (destroy_it == TRUE) {
				FUNC5(old_cred != NOCRED);
#if CONFIG_MACF
				mac_cred_label_destroy(old_cred);
#endif
				FUNC0(old_cred);

				old_cred->cr_ref = 0;
				FUNC2(old_cred, sizeof(*old_cred), M_CRED);
				old_cred = NOCRED;

			}
			return(found_cred);
		}

		/*
		 * Must allocate a new credential using the model.  also
		 * adds the new credential to the credential hash table.
		 */
		new_cred = FUNC8(model_cred);
		err = FUNC7(new_cred);
		FUNC4();

		/* retry if kauth_cred_add returns non zero value */
		if (err == 0)
			break;
#if CONFIG_MACF
		mac_cred_label_destroy(new_cred);
#endif
		FUNC0(new_cred);

		FUNC2(new_cred, sizeof(*new_cred), M_CRED);
		new_cred = NULL;
	}

	FUNC1("kauth_cred_update(cache miss): %p -> %p\n", old_cred, new_cred);
	FUNC11(&old_cred);
	return(new_cred);
}