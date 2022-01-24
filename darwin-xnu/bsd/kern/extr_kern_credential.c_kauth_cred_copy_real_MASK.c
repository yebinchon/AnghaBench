#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp_cred ;
struct ucred {int dummy; } ;
typedef  TYPE_1__* posix_cred_t ;
typedef  struct ucred* kauth_cred_t ;
struct TYPE_3__ {scalar_t__ cr_ruid; scalar_t__ cr_uid; scalar_t__ cr_rgid; scalar_t__ cr_gid; scalar_t__ cr_gmuid; int /*<<< orphan*/  cr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucred*) ; 
 int /*<<< orphan*/  CRF_NOMEMBERD ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ KAUTH_UID_NONE ; 
 int /*<<< orphan*/  M_CRED ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,struct ucred*,int) ; 
 int FUNC5 (struct ucred*) ; 
 scalar_t__ FUNC6 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC7 (struct ucred*) ; 
 struct ucred* FUNC8 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC10 (struct ucred*) ; 
 TYPE_1__* FUNC11 (struct ucred*) ; 

kauth_cred_t
FUNC12(kauth_cred_t cred)
{
	kauth_cred_t newcred = NULL, found_cred;
	struct ucred temp_cred;
	posix_cred_t temp_pcred = FUNC11(&temp_cred);
	posix_cred_t pcred = FUNC11(cred);

	/* if the credential is already 'real', just take a reference */
	if ((pcred->cr_ruid == pcred->cr_uid) &&
	    (pcred->cr_rgid == pcred->cr_gid)) {
		FUNC9(cred);
		return(cred);
	}

	/*
	 * Look up in cred hash table to see if we have a matching credential
	 * with the new values.
	 */
	FUNC4(cred, &temp_cred, sizeof(temp_cred));
	temp_pcred->cr_uid = pcred->cr_ruid;
	/* displacing a supplementary group opts us out of memberd */
	if (FUNC6(&temp_cred, pcred->cr_rgid)) {
		temp_pcred->cr_flags |= CRF_NOMEMBERD;
		temp_pcred->cr_gmuid = KAUTH_UID_NONE;
	}
	/*
	 * If the cred is not opted out, make sure we are using the r/euid
	 * for group checks
	 */
	if (temp_pcred->cr_gmuid != KAUTH_UID_NONE)
		temp_pcred->cr_gmuid = pcred->cr_ruid;

	for (;;) {
		int		err;
		
		FUNC2();
		found_cred = FUNC8(&temp_cred);
		if (found_cred == cred) {
			/* same cred so just bail */
			FUNC3();
			return(cred); 
		}
		if (found_cred != NULL) {
			/*
			 * Found a match so we bump reference count on new
			 * one.  We leave the old one alone.
			 */
			FUNC9(found_cred);
			FUNC3();
			return(found_cred);
		}
	
		/*
		 * Must allocate a new credential, copy in old credential
		 * data and update the real user and group IDs.
		 */
		newcred = FUNC7(&temp_cred);
		err = FUNC5(newcred);
		FUNC3();

		/* Retry if kauth_cred_add() fails */
		if (err == 0)
			break;
#if CONFIG_MACF
		mac_cred_label_destroy(newcred);
#endif
		FUNC0(newcred);

		FUNC1(newcred, sizeof(*newcred), M_CRED);
		newcred = NULL;
	}
	
	return(newcred);
}