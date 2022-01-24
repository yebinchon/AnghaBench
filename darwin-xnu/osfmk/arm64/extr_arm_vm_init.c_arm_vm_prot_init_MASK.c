#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct TYPE_4__ {int /*<<< orphan*/  topOfKernelData; } ;
typedef  TYPE_1__ boot_args ;
struct TYPE_5__ {int length; int /*<<< orphan*/  paddr; } ;
typedef  TYPE_2__ MemoryMapFileInfo ;
typedef  int /*<<< orphan*/  DTEntry ;

/* Variables and functions */
 int BOOTSTRAP_TABLE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,void**,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int PAGE_MAX_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  excepstack_high_guard ; 
 int /*<<< orphan*/  intstack_high_guard ; 
 int /*<<< orphan*/  intstack_low_guard ; 
 int kSuccess ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ segBOOTDATAB ; 
 scalar_t__ segDATAB ; 
 scalar_t__ segDATACONSTB ; 
 scalar_t__ segEXTRADATA ; 
 int /*<<< orphan*/  segKLDB ; 
 int /*<<< orphan*/  segLASTB ; 
 scalar_t__ segLINKB ; 
 scalar_t__ segLOWESTTEXT ; 
 scalar_t__ segPLKDATACONSTB ; 
 scalar_t__ segPLKLINKEDITB ; 
 scalar_t__ segPLKLLVMCOVB ; 
 int /*<<< orphan*/  segPLKTEXTEXECB ; 
 scalar_t__ segPRELINKDATAB ; 
 scalar_t__ segPRELINKINFOB ; 
 scalar_t__ segPRELINKTEXTB ; 
 scalar_t__ segSizeBOOTDATA ; 
 scalar_t__ segSizeDATA ; 
 scalar_t__ segSizeDATACONST ; 
 int segSizeEXTRADATA ; 
 int /*<<< orphan*/  segSizeKLD ; 
 int /*<<< orphan*/  segSizeLAST ; 
 scalar_t__ segSizeLINK ; 
 scalar_t__ segSizePLKDATACONST ; 
 scalar_t__ segSizePLKLINKEDIT ; 
 scalar_t__ segSizePLKLLVMCOV ; 
 int /*<<< orphan*/  segSizePLKTEXTEXEC ; 
 scalar_t__ segSizePRELINKDATA ; 
 scalar_t__ segSizePRELINKINFO ; 
 scalar_t__ segSizePRELINKTEXT ; 
 int segSizeTEXT ; 
 int /*<<< orphan*/  segSizeTEXTEXEC ; 
 scalar_t__ segTEXTB ; 
 int /*<<< orphan*/  segTEXTEXECB ; 

void
FUNC8(boot_args * args)
{

	segLOWESTTEXT = UINT64_MAX;
	if (segSizePRELINKTEXT  && (segPRELINKTEXTB < segLOWESTTEXT)) segLOWESTTEXT = segPRELINKTEXTB;
	FUNC6(segSizeTEXT);
	if (segTEXTB < segLOWESTTEXT) segLOWESTTEXT = segTEXTB;
	FUNC6(segLOWESTTEXT < UINT64_MAX);

	segEXTRADATA = segLOWESTTEXT;
	segSizeEXTRADATA = 0;

	DTEntry memory_map;
	MemoryMapFileInfo *trustCacheRange;
	unsigned int trustCacheRangeSize;
	int err;

	err = FUNC1(NULL, "chosen/memory-map", &memory_map);
	FUNC6(err == kSuccess);

	err = FUNC0(memory_map, "TrustCache", (void**)&trustCacheRange, &trustCacheRangeSize);
	if (err == kSuccess) {
		FUNC6(trustCacheRangeSize == sizeof(MemoryMapFileInfo));

		segEXTRADATA = FUNC7(trustCacheRange->paddr);
		segSizeEXTRADATA = trustCacheRange->length;

		FUNC2(segEXTRADATA, segSizeEXTRADATA, FALSE);
	}

	/* Map coalesced kext TEXT segment RWNX for now */
	FUNC4(segPRELINKTEXTB, segSizePRELINKTEXT, FALSE); // Refined in OSKext::readPrelinkedExtensions

	/* Map coalesced kext DATA_CONST segment RWNX (could be empty) */
	FUNC4(segPLKDATACONSTB, segSizePLKDATACONST, FALSE); // Refined in OSKext::readPrelinkedExtensions

	/* Map coalesced kext TEXT_EXEC segment RWX (could be empty) */
	FUNC3(segPLKTEXTEXECB, segSizePLKTEXTEXEC, FALSE); // Refined in OSKext::readPrelinkedExtensions

	/* if new segments not present, set space between PRELINK_TEXT and xnu TEXT to RWNX
	 * otherwise we no longer expect any space between the coalesced kext read only segments and xnu rosegments
	 */
	if (!segSizePLKDATACONST && !segSizePLKTEXTEXEC) {
		if (segSizePRELINKTEXT)
			FUNC4(segPRELINKTEXTB + segSizePRELINKTEXT, segTEXTB - (segPRELINKTEXTB + segSizePRELINKTEXT), FALSE);
	} else {
		/*
		 * If we have the new segments, we should still protect the gap between kext
		 * read-only pages and kernel read-only pages, in the event that this gap
		 * exists.
		 */
		if ((segPLKDATACONSTB + segSizePLKDATACONST) < segTEXTB) {
			FUNC4(segPLKDATACONSTB + segSizePLKDATACONST, segTEXTB - (segPLKDATACONSTB + segSizePLKDATACONST), FALSE);
		}
	}

	/*
	 * Protection on kernel text is loose here to allow shenanigans early on.  These
	 * protections are tightened in arm_vm_prot_finalize().  This is necessary because
	 * we currently patch LowResetVectorBase in cpu.c.
	 *
	 * TEXT segment contains mach headers and other non-executable data. This will become RONX later.
	 */
	FUNC2(segTEXTB, segSizeTEXT, FALSE);

	/* Can DATACONST start out and stay RNX?
	 * NO, stuff in this segment gets modified during startup (viz. mac_policy_init()/mac_policy_list)
	 * Make RNX in prot_finalize
	 */
	FUNC4(segDATACONSTB, segSizeDATACONST, FALSE);

	/* TEXTEXEC contains read only executable code: becomes ROX in prot_finalize */
	FUNC5(segTEXTEXECB, segSizeTEXTEXEC, FALSE);


	/* DATA segment will remain RWNX */
	FUNC4(segDATAB, segSizeDATA, FALSE);

	FUNC4(segBOOTDATAB, segSizeBOOTDATA, TRUE);
	FUNC2((vm_offset_t)&intstack_low_guard, PAGE_MAX_SIZE, TRUE);
	FUNC2((vm_offset_t)&intstack_high_guard, PAGE_MAX_SIZE, TRUE);
	FUNC2((vm_offset_t)&excepstack_high_guard, PAGE_MAX_SIZE, TRUE);

	FUNC3(segKLDB, segSizeKLD, FALSE);
	FUNC4(segLINKB, segSizeLINK, FALSE);
	FUNC4(segPLKLINKEDITB, segSizePLKLINKEDIT, FALSE); // Coalesced kext LINKEDIT segment
	FUNC3(segLASTB, segSizeLAST, FALSE); // __LAST may be empty, but we cannot assume this

	FUNC4(segPRELINKDATAB, segSizePRELINKDATA, FALSE); // Prelink __DATA for kexts (RW data)

	if (segSizePLKLLVMCOV > 0)
		FUNC4(segPLKLLVMCOVB, segSizePLKLLVMCOV, FALSE); // LLVM code coverage data

	FUNC4(segPRELINKINFOB, segSizePRELINKINFO, FALSE); /* PreLinkInfoDictionary */

	FUNC2(FUNC7(args->topOfKernelData), BOOTSTRAP_TABLE_SIZE, FALSE); // Boot page tables; they should not be mutable.
}