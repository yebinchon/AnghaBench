#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct image_params {int ip_flags; int ip_csflags; int ip_mac_return; scalar_t__ ip_cs_error; int /*<<< orphan*/  ip_new_thread; } ;
struct cs_blob {int csb_flags; scalar_t__ csb_platform_binary; int /*<<< orphan*/ * csb_entitlements_blob; int /*<<< orphan*/  csb_mem_size; scalar_t__ csb_mem_kaddr; } ;
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ os_reason_t ;
typedef  int /*<<< orphan*/ * mach_port_t ;
typedef  int kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_9__ {int p_csflags; scalar_t__ p_textvp; char* p_name; int /*<<< orphan*/  task; int /*<<< orphan*/  p_textoff; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_PROC_EXITREASON_CREATE ; 
 int /*<<< orphan*/  CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG ; 
 int /*<<< orphan*/  CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT ; 
 int /*<<< orphan*/  CSMAGIC_BLOBWRAPPER ; 
 int /*<<< orphan*/  CSSLOT_SIGNATURESLOT ; 
 int CS_ADHOC ; 
 int CS_ALLOWED_MACHO ; 
 int CS_CDHASH_LEN ; 
 int CS_CDHASH_STRING_SIZE ; 
 int CS_HARD ; 
 int CS_KILL ; 
 int CS_KILLED ; 
 int CS_SIGNED ; 
 int CS_VALID ; 
 int /*<<< orphan*/  DBG_BSD_PROC ; 
 int DBG_FUNC_NONE ; 
 int EACCES ; 
 int /*<<< orphan*/  EXEC_EXIT_REASON_SECURITY_POLICY ; 
 int /*<<< orphan*/  EXEC_EXIT_REASON_TASKGATED_OTHER ; 
 scalar_t__ FALSE ; 
 int IMGPF_SPAWN ; 
 int IMGPF_VFORK_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  KERN_FAILURE 129 
#define  KERN_SUCCESS 128 
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  OS_REASON_CODESIGNING ; 
 int /*<<< orphan*/  OS_REASON_EXEC ; 
 scalar_t__ OS_REASON_NULL ; 
 int /*<<< orphan*/  SIGKILL ; 
 scalar_t__ TRUE ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  peLog ; 
 scalar_t__ platform_exec_logging ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 struct cs_blob* FUNC18 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__,struct cs_blob*,struct image_params*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC22(proc_t p, struct image_params *imgp)
{
	mach_port_t port = NULL;
	kern_return_t kr = KERN_FAILURE;
	int error = EACCES;
	boolean_t unexpected_failure = FALSE;
	struct cs_blob *csb;
	boolean_t require_success = FALSE;
	int spawn = (imgp->ip_flags & IMGPF_SPAWN);
	int vfexec = (imgp->ip_flags & IMGPF_VFORK_EXEC);
	os_reason_t signature_failure_reason = OS_REASON_NULL;

	/*
	 * Override inherited code signing flags with the
	 * ones for the process that is being successfully
	 * loaded
	 */
	FUNC13(p);
	p->p_csflags = imgp->ip_csflags;
	FUNC14(p);

	/* Set the switch_protect flag on the map */
	if(p->p_csflags & (CS_HARD|CS_KILL)) {
		FUNC21(FUNC8(p->task), TRUE);
	}

	/*
	 * image activation may be failed due to policy
	 * which is unexpected but security framework does not
	 * approve of exec, kill and return immediately.
	 */
	if (imgp->ip_mac_return != 0) {

		FUNC2(FUNC0(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
						p->p_pid, OS_REASON_EXEC, EXEC_EXIT_REASON_SECURITY_POLICY, 0, 0);
		signature_failure_reason = FUNC10(OS_REASON_EXEC, EXEC_EXIT_REASON_SECURITY_POLICY);
		error = imgp->ip_mac_return;
		unexpected_failure = TRUE;
		goto done;
	}

	if (imgp->ip_cs_error != OS_REASON_NULL) {
		signature_failure_reason = imgp->ip_cs_error;
		imgp->ip_cs_error = OS_REASON_NULL;
		error = EACCES;
		goto done;
	}

	/* If the code signature came through the image activation path, we skip the
     * taskgated / externally attached path. */
	if (imgp->ip_csflags & CS_SIGNED) {
		error = 0;
		goto done;
	}

    /* The rest of the code is for signatures that either already have been externally
     * attached (likely, but not necessarily by a previous run through the taskgated
     * path), or that will now be attached by taskgated. */
    
	kr = FUNC17(p->task, &port);
	if (KERN_SUCCESS != kr || !FUNC1(port)) {
		error = 0;
		if (require_success) {
			FUNC2(FUNC0(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
							p->p_pid, OS_REASON_CODESIGNING, CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT, 0, 0);
			signature_failure_reason = FUNC10(OS_REASON_CODESIGNING, CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT);
			error = EACCES;
		}
		goto done;
	}

	/*
	 * taskgated returns KERN_SUCCESS if it has completed its work
	 * and the exec should continue, KERN_FAILURE if the exec should 
	 * fail, or it may error out with different error code in an 
	 * event of mig failure (e.g. process was signalled during the 
	 * rpc call, taskgated died, mig server died etc.).
	 */

	kr = FUNC3(port, p->p_pid);
	switch (kr) {
	case KERN_SUCCESS:
		error = 0;
		break;
	case KERN_FAILURE:
		error = EACCES;

		FUNC2(FUNC0(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
						p->p_pid, OS_REASON_CODESIGNING, CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG, 0, 0);
		signature_failure_reason = FUNC10(OS_REASON_CODESIGNING, CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG);
		goto done;
	default:
		error = EACCES;

		FUNC2(FUNC0(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
						p->p_pid, OS_REASON_EXEC, EXEC_EXIT_REASON_TASKGATED_OTHER, 0, 0);
		signature_failure_reason = FUNC10(OS_REASON_EXEC, EXEC_EXIT_REASON_TASKGATED_OTHER);
		unexpected_failure = TRUE;
		goto done;
	}

	/* Only do this if exec_resettextvp() did not fail */
	if (p->p_textvp != NULLVP) {
		csb = FUNC18(p->p_textvp, -1, p->p_textoff);

		if (csb != NULL) {
			/* As the enforcement we can do here is very limited, we only allow things that
			 * are the only reason why this code path still exists:
			 * Adhoc signed non-platform binaries without special cs_flags and without any
			 * entitlements (unrestricted ones still pass AMFI). */
			if (
                /* Revalidate the blob if necessary through bumped generation count. */
                (FUNC20(p->p_textvp) == 0 ||
                 FUNC19(p->p_textvp, csb, imgp, 0) == 0) &&
                /* Only CS_ADHOC, no CS_KILL, CS_HARD etc. */
				(csb->csb_flags & CS_ALLOWED_MACHO) == CS_ADHOC &&
				/* If it has a CMS blob, it's not adhoc. The CS_ADHOC flag can lie. */
				FUNC6((const uint8_t *)csb->csb_mem_kaddr, csb->csb_mem_size,
									   CSSLOT_SIGNATURESLOT,
									   CSMAGIC_BLOBWRAPPER) == NULL &&
				/* It could still be in a trust cache (unlikely with CS_ADHOC), or a magic path. */
				csb->csb_platform_binary == 0 &&
				/* No entitlements, not even unrestricted ones. */
                csb->csb_entitlements_blob == NULL) {

				FUNC13(p);
				p->p_csflags |= CS_SIGNED | CS_VALID;
				FUNC14(p);

			} else {
				uint8_t cdhash[CS_CDHASH_LEN];
				char cdhash_string[CS_CDHASH_STRING_SIZE];
				FUNC12(p, cdhash);
				FUNC5(cdhash_string, cdhash);
				FUNC11("ignoring detached code signature on '%s' with cdhash '%s' "
					   "because it is invalid, or not a simple adhoc signature.\n", 
					   p->p_name, cdhash_string);
			}

		}
	}

done:
	if (0 == error) {
		/* The process's code signature related properties are
		 * fully set up, so this is an opportune moment to log
		 * platform binary execution, if desired. */
		if (platform_exec_logging != 0 && FUNC7(p)) {
			uint8_t cdhash[CS_CDHASH_LEN];
			char cdhash_string[CS_CDHASH_STRING_SIZE];
			FUNC12(p, cdhash);
			FUNC5(cdhash_string, cdhash);

			FUNC9(peLog, "CS Platform Exec Logging: Executing platform signed binary "
				   "'%s' with cdhash %s\n", p->p_name, cdhash_string);
		}
	} else {
		if (!unexpected_failure)
			p->p_csflags |= CS_KILLED;
		/* make very sure execution fails */
		if (vfexec || spawn) {
			FUNC4(signature_failure_reason != OS_REASON_NULL);
			FUNC15(p, p->task, imgp->ip_new_thread,
					SIGKILL, signature_failure_reason);
			signature_failure_reason = OS_REASON_NULL;
			error = 0;
		} else {
			FUNC4(signature_failure_reason != OS_REASON_NULL);
			FUNC16(p, SIGKILL, signature_failure_reason);
			signature_failure_reason = OS_REASON_NULL;
		}
	}

	/* If we hit this, we likely would have leaked an exit reason */
	FUNC4(signature_failure_reason == OS_REASON_NULL);
	return error;
}