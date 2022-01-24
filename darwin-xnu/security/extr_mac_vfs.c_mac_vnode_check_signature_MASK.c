#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_size_t ;
struct vnode {int /*<<< orphan*/  v_label; } ;
struct image_params {TYPE_1__* ip_cs_error; int /*<<< orphan*/  ip_origcputype; } ;
struct cs_blob {int dummy; } ;
typedef  TYPE_1__* os_reason_t ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int kern_return_t ;
typedef  int /*<<< orphan*/  cpu_type_t ;
struct TYPE_5__ {int osr_flags; int /*<<< orphan*/  osr_kcd_descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG ; 
 int /*<<< orphan*/  CPU_TYPE_ANY ; 
 int /*<<< orphan*/  EXIT_REASON_USER_DESC ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cs_blob*,unsigned int*,unsigned int*,int,char**,size_t*) ; 
 size_t MAXPATHLEN ; 
 int /*<<< orphan*/  OS_REASON_CODESIGNING ; 
 int OS_REASON_FLAG_CONSISTENT_FAILURE ; 
 int OS_REASON_FLAG_GENERATE_CRASH_REPORT ; 
 TYPE_1__* OS_REASON_NULL ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  mac_proc_enforce ; 
 int /*<<< orphan*/  mac_vnode_enforce ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 scalar_t__ FUNC10 (struct vnode*,char*,int*) ; 
 int /*<<< orphan*/  vnode_check_signature ; 

int
FUNC11(struct vnode *vp, struct cs_blob *cs_blob,
								  struct image_params *imgp,
								  unsigned int *cs_flags, unsigned int *signer_type,
								  int flags)
{
	 int error;
	 char *fatal_failure_desc = NULL;
	 size_t fatal_failure_desc_len = 0;

	 char *vn_path = NULL;
	 vm_size_t vn_pathlen = MAXPATHLEN;
	 cpu_type_t cpu_type = (imgp == NULL) ? CPU_TYPE_ANY : imgp->ip_origcputype;


#if SECURITY_MAC_CHECK_ENFORCE
	 /* 21167099 - only check if we allow write */
	 if (!mac_proc_enforce || !mac_vnode_enforce)
		  return 0;
#endif

	 FUNC0(vnode_check_signature, vp, vp->v_label, cpu_type, cs_blob,
			   cs_flags, signer_type, flags, &fatal_failure_desc, &fatal_failure_desc_len);

	 if (fatal_failure_desc_len) {
		  // A fatal code signature validation failure occured, formulate a crash
		  // reason.

		  char const *path = NULL;

		  vn_path = (char *)FUNC1(MAXPATHLEN);
		  if (vn_path != NULL) {
				if (FUNC10(vp, vn_path, (int*)&vn_pathlen) == 0) {
					 path = vn_path;
				} else {
					 path = "(get vnode path failed)";
				}
		  } else {
				path = "(path alloc failed)";
		  }

		  if (error == 0) {
				FUNC8("mac_vnode_check_signature: MAC hook returned no error, "
						"but status is claimed to be fatal? "
						"path: '%s', fatal_failure_desc_len: %ld, fatal_failure_desc:\n%s\n",
						path, fatal_failure_desc_len, fatal_failure_desc);
		  }

		  FUNC9("mac_vnode_check_signature: %s: code signature validation failed fatally: %s",
					path, fatal_failure_desc);

		  if (imgp == NULL) {
				goto out;
		  }

		  os_reason_t reason = FUNC7(OS_REASON_CODESIGNING,
															 CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG);

		  if (reason == OS_REASON_NULL) {
				FUNC9("mac_vnode_check_signature: %s: failure to allocate exit reason for validation failure: %s\n",
						 path, fatal_failure_desc);
				goto out;
		  }

		  imgp->ip_cs_error = reason;
		  reason->osr_flags = (OS_REASON_FLAG_GENERATE_CRASH_REPORT |
									  OS_REASON_FLAG_CONSISTENT_FAILURE);

		  if (fatal_failure_desc == NULL) {
				// This may happen if allocation for the buffer failed.
				FUNC9("mac_vnode_check_signature: %s: fatal failure is missing its description.\n", path);
		  } else {
				mach_vm_address_t data_addr = 0;

				int reason_error = 0;
				int kcdata_error = 0;

				if ((reason_error = FUNC6(reason, FUNC2
																		 (1, fatal_failure_desc_len))) == 0 &&
					 (kcdata_error = FUNC3(&reason->osr_kcd_descriptor,
																		 EXIT_REASON_USER_DESC, fatal_failure_desc_len,
																		 &data_addr)) == KERN_SUCCESS) {
					 kern_return_t mc_error = FUNC4(&reason->osr_kcd_descriptor, (mach_vm_address_t)data_addr,
																		 fatal_failure_desc, fatal_failure_desc_len);

					 if (mc_error != KERN_SUCCESS) {
						  FUNC9("mac_vnode_check_signature: %s: failed to copy reason string "
									"(kcdata_memcpy error: %d, length: %ld)\n",
									path, mc_error, fatal_failure_desc_len);
					 }
				} else {
					 FUNC9("mac_vnode_check_signature: %s: failed to allocate space for reason string "
							  "(os_reason_alloc_buffer error: %d, kcdata error: %d, length: %ld)\n",
							  path, reason_error, kcdata_error, fatal_failure_desc_len);
				}

		  }
	 }

out:
	 if (vn_path) {
		  FUNC5(vn_path, MAXPATHLEN);
	 }

	 if (fatal_failure_desc_len > 0 && fatal_failure_desc != NULL) {
		  FUNC5(fatal_failure_desc, fatal_failure_desc_len);
	 }

	 return (error);
}