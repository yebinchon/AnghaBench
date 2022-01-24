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
typedef  scalar_t__ gid_t ;
struct TYPE_3__ {scalar_t__* cr_groups; scalar_t__ cr_rgid; scalar_t__ cr_svgid; int /*<<< orphan*/  cr_gmuid; int /*<<< orphan*/  cr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRF_NOMEMBERD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ucred*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ KAUTH_GID_NONE ; 
 int /*<<< orphan*/  KAUTH_UID_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct ucred*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,struct ucred*,int) ; 
 scalar_t__ FUNC4 (struct ucred*,scalar_t__) ; 
 struct ucred* FUNC5 (struct ucred*,struct ucred*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct ucred*) ; 

kauth_cred_t
FUNC7(kauth_cred_t cred, gid_t rgid, gid_t egid, gid_t svgid)
{
	struct ucred 	temp_cred;
	posix_cred_t temp_pcred = FUNC6(&temp_cred);
	posix_cred_t pcred = FUNC6(cred);

	FUNC2(cred);
	FUNC1("kauth_cred_setresgid %p %d %d %d\n", cred, rgid, egid, svgid);

	/*
	 * We don't need to do anything if the given GID are already the 
	 * same as the GIDs in the credential.
	 */
	if (pcred->cr_groups[0] == egid &&
	    pcred->cr_rgid == rgid &&
	    pcred->cr_svgid == svgid) {
		/* no change needed */
		return(cred);
	}

	/*
	 * Look up in cred hash table to see if we have a matching credential
	 * with the new values; this is done by calling kauth_cred_update().
	 */
	FUNC3(cred, &temp_cred, sizeof(temp_cred));
	if (egid != KAUTH_GID_NONE) {
		/* displacing a supplementary group opts us out of memberd */
		if (FUNC4(&temp_cred, egid)) {
			FUNC0("displaced!\n");
			temp_pcred->cr_flags |= CRF_NOMEMBERD;
			temp_pcred->cr_gmuid = KAUTH_UID_NONE;
		} else {
			FUNC0("not displaced\n");
		}
	}
	if (rgid != KAUTH_GID_NONE) {
		temp_pcred->cr_rgid = rgid;
	}
	if (svgid != KAUTH_GID_NONE) {
		temp_pcred->cr_svgid = svgid;
	}

	return(FUNC5(cred, &temp_cred, TRUE));
}