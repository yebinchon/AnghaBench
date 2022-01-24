#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct modctl {int /*<<< orphan*/  mod_loadcnt; } ;
typedef  void* machine_inst_t ;
struct TYPE_6__ {scalar_t__ fbtp_currentval; scalar_t__ fbtp_patchval; void** fbtp_patchpoint; uintptr_t fbtp_roffset; void* fbtp_id; void* fbtp_hashnext; void* fbtp_savedval; int /*<<< orphan*/  fbtp_rval; int /*<<< orphan*/  fbtp_loadcnt; struct modctl* fbtp_ctl; struct TYPE_6__* fbtp_next; int /*<<< orphan*/  fbtp_name; } ;
typedef  TYPE_1__ fbt_probe_t ;
typedef  scalar_t__ dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DTRACE_INVOP_PUSH_FRAME ; 
 int /*<<< orphan*/  DTRACE_INVOP_RET ; 
 size_t FUNC1 (void**) ; 
 int /*<<< orphan*/  FBT_AFRAMES_ENTRY ; 
 int /*<<< orphan*/  FBT_AFRAMES_RETURN ; 
 int /*<<< orphan*/  FBT_ENTRY ; 
 int FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int FUNC7 (void*) ; 
 void* FBT_PATCHVAL ; 
 int /*<<< orphan*/  FBT_RETURN ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MAX_FBTP_NAME_CHARS ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC10 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  fbt_id ; 
 void** fbt_probetab ; 
 TYPE_1__* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC16(struct modctl *ctl, const char *modname, const char* symbolName, machine_inst_t* symbolStart, machine_inst_t *instrHigh)
{
        int		doenable = 0;
	dtrace_id_t	thisid;

	fbt_probe_t	*newfbt, *retfbt, *entryfbt;
	machine_inst_t *instr, *pushinstr = NULL, *limit, theInstr;
	int             foundPushLR, savedRegs;

	/*
	 * Guard against null and invalid symbols
	 */
	if (!symbolStart || !instrHigh || instrHigh < symbolStart) {
		FUNC14("dtrace: %s has an invalid address\n", symbolName);
		return;
	}

	/*
	 * Assume the compiler doesn't schedule instructions in the prologue.
	 */
	foundPushLR = 0;
	savedRegs = -1;
	limit = (machine_inst_t *)instrHigh;

	FUNC8(sizeof(*instr) == 4);

	for (instr = symbolStart, theInstr = 0; instr < instrHigh; instr++)
	{
		/*
		 * Count the number of time we pushed something onto the stack
		 * before hitting a frame push. That will give us an estimation
		 * of how many stack pops we should expect when looking for the
		 * RET instruction.
		 */
		theInstr = *instr;
		if (FUNC6(theInstr)) {
			foundPushLR = 1;
			pushinstr = instr;
		}

		if (foundPushLR && (FUNC3(theInstr)))
			/* Guard against a random setting of fp from sp, we make sure we found the push first */
			break;
		if (FUNC7(theInstr)) /* We've gone too far, bail. */
			break;
		if (FUNC5(theInstr)) /* We've gone too far, bail. */
			break;
	}

	if (!(foundPushLR && (FUNC3(theInstr)))) {
		return;
	}

	thisid = FUNC11(fbt_id, modname, symbolName, FBT_ENTRY);
	newfbt = FUNC13(sizeof(fbt_probe_t), KM_SLEEP);
	newfbt->fbtp_next = NULL;
	FUNC15( (char *)&(newfbt->fbtp_name), symbolName, MAX_FBTP_NAME_CHARS );

	if (thisid != 0) {
		/*
		 * The dtrace_probe previously existed, so we have to hook
		 * the newfbt entry onto the end of the existing fbt's
		 * chain.
		 * If we find an fbt entry that was previously patched to
		 * fire, (as indicated by the current patched value), then
		 * we want to enable this newfbt on the spot.
		 */
		entryfbt = FUNC9 (fbt_id, thisid);
		FUNC0 (entryfbt != NULL);
		for(; entryfbt != NULL; entryfbt = entryfbt->fbtp_next) {
			if (entryfbt->fbtp_currentval == entryfbt->fbtp_patchval)
				doenable++;

			if (entryfbt->fbtp_next == NULL) {
				entryfbt->fbtp_next = newfbt;
				newfbt->fbtp_id = entryfbt->fbtp_id;
				break;
			}
		}
	}
	else {
		/*
		 * The dtrace_probe did not previously exist, so we
		 * create it and hook in the newfbt.  Since the probe is
		 * new, we obviously do not need to enable it on the spot.
		 */
		newfbt->fbtp_id = FUNC10(fbt_id, modname, symbolName, FBT_ENTRY, FBT_AFRAMES_ENTRY, newfbt);
		doenable = 0;
	}

	newfbt->fbtp_patchpoint = instr;
	newfbt->fbtp_ctl = ctl;
	newfbt->fbtp_loadcnt = ctl->mod_loadcnt;
	newfbt->fbtp_rval = DTRACE_INVOP_PUSH_FRAME;
	newfbt->fbtp_savedval = theInstr;
	newfbt->fbtp_patchval = FBT_PATCHVAL;
	newfbt->fbtp_currentval = 0;
	newfbt->fbtp_hashnext = fbt_probetab[FUNC1(instr)];
	fbt_probetab[FUNC1(instr)] = newfbt;

	if (doenable)
		FUNC12(NULL, newfbt->fbtp_id, newfbt);

	/*
	 * The fbt entry chain is in place, one entry point per symbol.
	 * The fbt return chain can have multiple return points per
	 * symbol.
	 * Here we find the end of the fbt return chain.
	 */

	doenable=0;

	thisid = FUNC11(fbt_id, modname, symbolName, FBT_RETURN);

	if (thisid != 0) {
		/* The dtrace_probe previously existed, so we have to
		 * find the end of the existing fbt chain.  If we find
		 * an fbt return that was previously patched to fire,
		 * (as indicated by the currrent patched value), then
		 * we want to enable any new fbts on the spot.
		 */
		retfbt = FUNC9 (fbt_id, thisid);
		FUNC0(retfbt != NULL);
		for (;  retfbt != NULL; retfbt =  retfbt->fbtp_next) {
			if (retfbt->fbtp_currentval == retfbt->fbtp_patchval)
				doenable++;
			if(retfbt->fbtp_next == NULL)
				break;
		}
	}
	else {
		doenable = 0;
		retfbt = NULL;
	}

	/*
	 * Go back to the start of the function, in case
	 * the compiler emitted pcrel data loads
	 * before FP was adjusted.
	 */
	instr = pushinstr + 1;
again:
	if (instr >= limit)
		return;

	/* XXX FIXME ... extra jump table detection? */

	/*
	 * OK, it's an instruction.
	 */
	theInstr = *instr;

	/* Walked onto the start of the next routine? If so, bail out from this function */
	if (FUNC6(theInstr)) {
		if (!retfbt)
			FUNC14("dtrace: fbt: No return probe for %s, walked to next routine at 0x%016llx\n",symbolName,(uint64_t)instr);
		return;
	}

	/* XXX fancy detection of end of function using PC-relative loads */

	/*
	 * Look for:
	 * 	ldp fp, lr, [sp], #val
	 * 	ldp fp, lr, [sp,  #val]
	 */
	if (!FUNC5(theInstr)) {
		instr++;
		goto again;
	}

	/* go to the next instruction */
	instr++;

	/* Scan ahead for a ret or a branch outside the function */
	for (; instr < limit; instr++) {
		theInstr = *instr;
		if (FUNC7(theInstr))
			break;
		if (FUNC4(theInstr)) {
			machine_inst_t *dest = instr + FUNC2(theInstr);
			/*
			 * Check whether the destination of the branch
			 * is outside of the function
			 */
			if (dest >= limit || dest < symbolStart)
				break;
		}
	}

	if (!FUNC7(theInstr) && !FUNC4(theInstr))
		return;

	newfbt = FUNC13(sizeof(fbt_probe_t), KM_SLEEP);
	newfbt->fbtp_next = NULL;
	FUNC15( (char *)&(newfbt->fbtp_name), symbolName, MAX_FBTP_NAME_CHARS );

	if (retfbt == NULL) {
		newfbt->fbtp_id = FUNC10(fbt_id, modname,
		    symbolName, FBT_RETURN, FBT_AFRAMES_RETURN, newfbt);
	} else {
		retfbt->fbtp_next = newfbt;
		newfbt->fbtp_id = retfbt->fbtp_id;
	}

	retfbt = newfbt;
	newfbt->fbtp_patchpoint = instr;
	newfbt->fbtp_ctl = ctl;
	newfbt->fbtp_loadcnt = ctl->mod_loadcnt;

	FUNC0(FUNC7(theInstr));
	newfbt->fbtp_rval = DTRACE_INVOP_RET;
	newfbt->fbtp_roffset = (uintptr_t) ((uint8_t*) instr - (uint8_t *)symbolStart);
	newfbt->fbtp_savedval = theInstr;
	newfbt->fbtp_patchval = FBT_PATCHVAL;
	newfbt->fbtp_currentval = 0;
	newfbt->fbtp_hashnext = fbt_probetab[FUNC1(instr)];
	fbt_probetab[FUNC1(instr)] = newfbt;

	if (doenable)
		FUNC12(NULL, newfbt->fbtp_id, newfbt);

	instr++;
	goto again;
}