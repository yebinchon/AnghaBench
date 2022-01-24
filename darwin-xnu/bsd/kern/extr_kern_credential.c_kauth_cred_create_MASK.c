#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* posix_cred_t ;
typedef  TYPE_2__* kauth_cred_t ;
struct TYPE_17__ {int /*<<< orphan*/  cr_audit; } ;
struct TYPE_16__ {int cr_flags; int cr_ngroups; int /*<<< orphan*/ * cr_groups; void* cr_gmuid; int /*<<< orphan*/  cr_svgid; int /*<<< orphan*/  cr_rgid; int /*<<< orphan*/  cr_svuid; int /*<<< orphan*/  cr_ruid; void* cr_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int CRF_NOMEMBERD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* KAUTH_UID_NONE ; 
 int /*<<< orphan*/  M_CRED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 () ; 
 TYPE_2__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_1__* FUNC12 (TYPE_2__*) ; 

kauth_cred_t
FUNC13(kauth_cred_t cred)
{
	kauth_cred_t 	found_cred, new_cred = NULL;
	posix_cred_t	pcred = FUNC12(cred);
	int is_member = 0;

	FUNC3();

	if (pcred->cr_flags & CRF_NOMEMBERD) {
		pcred->cr_gmuid = KAUTH_UID_NONE;
	} else {
		/*
		 * If the template credential is not opting out of external
		 * group membership resolution, then we need to check that
		 * the UID we will be using is resolvable by the external
		 * resolver.  If it's not, then we opt it out anyway, since
		 * all future external resolution requests will be failing
		 * anyway, and potentially taking a long time to do it.  We
		 * use gid 0 because we always know it will exist and not
		 * trigger additional lookups. This is OK, because we end up
		 * precatching the information here as a result.
		 */
		if (!FUNC9(cred, 0, &is_member)) {
			/*
			 * It's a recognized value; we don't really care about
			 * the answer, so long as it's something the external
			 * resolver could have vended.
			 */
			pcred->cr_gmuid = pcred->cr_uid;
		} else {
			/*
			 * It's not something the external resolver could
			 * have vended, so we don't want to ask it more
			 * questions about the credential in the future. This
			 * speeds up future lookups, as long as the caller
			 * caches results; otherwise, it the same recurring
			 * cost.  Since most credentials are used multiple
			 * times, we still get some performance win from this.
			 */
			pcred->cr_gmuid = KAUTH_UID_NONE;
			pcred->cr_flags |= CRF_NOMEMBERD;
		}
	}

	/* Caller *must* specify at least the egid in cr_groups[0] */
	if (pcred->cr_ngroups < 1)
		return(NULL);
	
	for (;;) {
		FUNC2();
		found_cred = FUNC8(cred);
		if (found_cred != NULL) {
			/*
			 * Found an existing credential so we'll bump
			 * reference count and return
			 */
			FUNC10(found_cred);
			FUNC4();
			return(found_cred);
		}
		FUNC4();
	
		/*
		 * No existing credential found.  Create one and add it to
		 * our hash table.
		 */
		new_cred = FUNC7();
		if (new_cred != NULL) {
			int		err;
			posix_cred_t	new_pcred = FUNC12(new_cred);
			new_pcred->cr_uid = pcred->cr_uid;
			new_pcred->cr_ruid = pcred->cr_ruid;
			new_pcred->cr_svuid = pcred->cr_svuid;
			new_pcred->cr_rgid = pcred->cr_rgid;
			new_pcred->cr_svgid = pcred->cr_svgid;
			new_pcred->cr_gmuid = pcred->cr_gmuid;
			new_pcred->cr_ngroups = pcred->cr_ngroups;	
			FUNC5(&pcred->cr_groups[0], &new_pcred->cr_groups[0], sizeof(new_pcred->cr_groups));
#if CONFIG_AUDIT
			bcopy(&cred->cr_audit, &new_cred->cr_audit, 
			    sizeof(new_cred->cr_audit));
#endif
			new_pcred->cr_flags = pcred->cr_flags;
			
			FUNC2();
			err = FUNC6(new_cred);
			FUNC4();
			
			/* Retry if kauth_cred_add returns non zero value */
			if (err == 0)
				break;
#if CONFIG_MACF
			mac_cred_label_destroy(new_cred);
#endif
			FUNC0(new_cred);

			FUNC1(new_cred, sizeof(*new_cred), M_CRED);
			new_cred = NULL;
		}
	}

	return(new_cred);
}