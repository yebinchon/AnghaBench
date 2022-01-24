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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  void* user_size_t ;
typedef  size_t uint32_t ;
struct image_params {int ip_vdata; int /*<<< orphan*/  ip_origcpusubtype; int /*<<< orphan*/  ip_origcputype; void* ip_arch_size; void* ip_arch_offset; int /*<<< orphan*/  ip_vp; scalar_t__ ip_px_sa; int /*<<< orphan*/  ip_vfs_context; } ;
struct fat_header {int /*<<< orphan*/  magic; } ;
struct fat_arch {int /*<<< orphan*/  cpusubtype; int /*<<< orphan*/  cputype; scalar_t__ size; scalar_t__ offset; } ;
struct _posix_spawnattr {scalar_t__* psa_binprefs; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ load_return_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  scalar_t__ cpu_type_t ;

/* Variables and functions */
 scalar_t__ CPU_TYPE_ANY ; 
 int EBADARCH ; 
 int EBADEXEC ; 
 scalar_t__ FAT_MAGIC ; 
 int IO_NODELOCKED ; 
 int IO_UNIT ; 
 scalar_t__ LOAD_SUCCESS ; 
 size_t NBINPREFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,struct fat_arch*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,struct fat_arch*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct image_params *imgp)
{
	proc_t p = FUNC8(imgp->ip_vfs_context);
	kauth_cred_t cred = FUNC4(p);
	struct fat_header *fat_header = (struct fat_header *)imgp->ip_vdata;
	struct _posix_spawnattr *psa = NULL;
	struct fat_arch fat_arch;
	int resid, error;
	load_return_t lret;

	if (imgp->ip_origcputype != 0) {
		/* Fat header previously matched, don't allow another fat file inside */
		error = -1; /* not claimed */
		goto bad;
	}

	/* Make sure it's a fat binary */
	if (FUNC0(fat_header->magic) != FAT_MAGIC) {
		error = -1; /* not claimed */
		goto bad;
	}

	/* imgp->ip_vdata has PAGE_SIZE, zerofilled if the file is smaller */
	lret = FUNC3((vm_offset_t)fat_header, PAGE_SIZE);
	if (lret != LOAD_SUCCESS) {
		error = FUNC6(lret);
		goto bad;
	}

	/* If posix_spawn binprefs exist, respect those prefs. */
	psa = (struct _posix_spawnattr *) imgp->ip_px_sa;
	if (psa != NULL && psa->psa_binprefs[0] != 0) {
		uint32_t pr = 0;

		/* Check each preference listed against all arches in header */
		for (pr = 0; pr < NBINPREFS; pr++) {
			cpu_type_t pref = psa->psa_binprefs[pr];
			if (pref == 0) {
				/* No suitable arch in the pref list */
				error = EBADARCH;
				goto bad;
			}

			if (pref == CPU_TYPE_ANY) {
				/* Fall through to regular grading */
				goto regular_grading;
			}

			lret = FUNC2(pref,
							(vm_offset_t)fat_header,
							PAGE_SIZE,
							&fat_arch);
			if (lret == LOAD_SUCCESS) {
				goto use_arch;
			}
		}

		/* Requested binary preference was not honored */
		error = EBADEXEC;
		goto bad;
	}

regular_grading:
	/* Look up our preferred architecture in the fat file. */
	lret = FUNC1((vm_offset_t)fat_header,
				PAGE_SIZE,
				&fat_arch);
	if (lret != LOAD_SUCCESS) {
		error = FUNC6(lret);
		goto bad;
	}

use_arch:
	/* Read the Mach-O header out of fat_arch */
	error = FUNC9(UIO_READ, imgp->ip_vp, imgp->ip_vdata,
			PAGE_SIZE, fat_arch.offset,
			UIO_SYSSPACE, (IO_UNIT|IO_NODELOCKED),
			cred, &resid, p);
	if (error) {
		goto bad;
	}

	if (resid) {
		FUNC7(imgp->ip_vdata + (PAGE_SIZE - resid), 0x0, resid);
	}

	/* Success.  Indicate we have identified an encapsulated binary */
	error = -2;
	imgp->ip_arch_offset = (user_size_t)fat_arch.offset;
	imgp->ip_arch_size = (user_size_t)fat_arch.size;
	imgp->ip_origcputype = fat_arch.cputype;
	imgp->ip_origcpusubtype = fat_arch.cpusubtype;

bad:
	FUNC5(&cred);
	return (error);
}