#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int rtftype; scalar_t__ rtftid; scalar_t__ rtfupid; scalar_t__ rtfpc; int /*<<< orphan*/  rtfaddr; scalar_t__ rtfduration; scalar_t__ rtfabstime; } ;
typedef  TYPE_1__ vm_rtfault_record_t ;
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  TYPE_2__* thread_t ;
struct TYPE_8__ {scalar_t__ vmrtfr_curi; scalar_t__ vmrtfr_maxi; TYPE_1__* vm_rtf_records; int /*<<< orphan*/  vmrtf_total; } ;
struct TYPE_7__ {scalar_t__ thread_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,uintptr_t*,unsigned int,scalar_t__*,int*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ vmrtfrs ; 

__attribute__((used)) static void FUNC6(thread_t cthread, uint64_t fstart, vm_map_offset_t fault_vaddr, int type_of_fault) {
	uint64_t fend = FUNC3();

	uint64_t cfpc = 0;
	uint64_t ctid = cthread->thread_id;
	uint64_t cupid = FUNC2();

	uintptr_t bpc = 0;
	uint32_t bfrs = 0;
	bool u64 = false;

	/* Capture a single-frame backtrace; this extracts just the program
	 * counter at the point of the fault into "bpc", and should perform no
	 * further user stack traversals, thus avoiding copyin()s and further
	 * faults.
	 */
	int btr = FUNC1(cthread, &bpc, 1U, &bfrs, &u64);

	if ((btr == 0) && (bfrs > 0)) {
		cfpc = bpc;
	}

	FUNC0((fstart != 0) && fend >= fstart);
	FUNC4();
	FUNC0(vmrtfrs.vmrtfr_curi <= vmrtfrs.vmrtfr_maxi);

	vmrtfrs.vmrtf_total++;
	vm_rtfault_record_t *cvmr = &vmrtfrs.vm_rtf_records[vmrtfrs.vmrtfr_curi++];

	cvmr->rtfabstime = fstart;
	cvmr->rtfduration = fend - fstart;
	cvmr->rtfaddr = fault_vaddr;
	cvmr->rtfpc = cfpc;
	cvmr->rtftype = type_of_fault;
	cvmr->rtfupid = cupid;
	cvmr->rtftid = ctid;

	if (vmrtfrs.vmrtfr_curi > vmrtfrs.vmrtfr_maxi) {
		vmrtfrs.vmrtfr_curi = 0;
	}

	FUNC5();
}