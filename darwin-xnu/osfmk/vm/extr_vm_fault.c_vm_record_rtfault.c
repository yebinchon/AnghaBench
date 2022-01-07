
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rtftype; scalar_t__ rtftid; scalar_t__ rtfupid; scalar_t__ rtfpc; int rtfaddr; scalar_t__ rtfduration; scalar_t__ rtfabstime; } ;
typedef TYPE_1__ vm_rtfault_record_t ;
typedef int vm_map_offset_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_8__ {scalar_t__ vmrtfr_curi; scalar_t__ vmrtfr_maxi; TYPE_1__* vm_rtf_records; int vmrtf_total; } ;
struct TYPE_7__ {scalar_t__ thread_id; } ;


 int assert (int) ;
 int backtrace_thread_user (TYPE_2__*,uintptr_t*,unsigned int,scalar_t__*,int*) ;
 scalar_t__ get_current_unique_pid () ;
 scalar_t__ mach_continuous_time () ;
 int vm_rtfrecord_lock () ;
 int vm_rtfrecord_unlock () ;
 TYPE_3__ vmrtfrs ;

__attribute__((used)) static void vm_record_rtfault(thread_t cthread, uint64_t fstart, vm_map_offset_t fault_vaddr, int type_of_fault) {
 uint64_t fend = mach_continuous_time();

 uint64_t cfpc = 0;
 uint64_t ctid = cthread->thread_id;
 uint64_t cupid = get_current_unique_pid();

 uintptr_t bpc = 0;
 uint32_t bfrs = 0;
 bool u64 = 0;






 int btr = backtrace_thread_user(cthread, &bpc, 1U, &bfrs, &u64);

 if ((btr == 0) && (bfrs > 0)) {
  cfpc = bpc;
 }

 assert((fstart != 0) && fend >= fstart);
 vm_rtfrecord_lock();
 assert(vmrtfrs.vmrtfr_curi <= vmrtfrs.vmrtfr_maxi);

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

 vm_rtfrecord_unlock();
}
