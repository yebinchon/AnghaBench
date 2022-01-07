
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int pid_t ;
typedef scalar_t__ os_reason_t ;
typedef int boolean_t ;
struct TYPE_13__ {scalar_t__ entry_count; } ;
struct TYPE_12__ {int p_memstat_effectivepriority; int p_memstat_state; scalar_t__ p_memstat_memlimit; int task; int p_pid; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_JETSAM_HIWAT ;
 int DBG_BSD_MEMSTAT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FALSE ;
 int JETSAM_REASON_MEMORY_HIGHWATER ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;
 int OS_REASON_JETSAM ;
 scalar_t__ OS_REASON_NULL ;
 TYPE_1__* PROC_NULL ;
 int P_MEMSTAT_DIAG_SUSPENDED ;
 int P_MEMSTAT_ERROR ;
 int P_MEMSTAT_LOCKED ;
 int P_MEMSTAT_TERMINATED ;
 int TRUE ;
 unsigned long long get_task_phys_footprint (int ) ;
 int kMemorystatusKilledHiwat ;
 int kPolicyDiagnoseActive ;
 int memorystatus_available_pages ;
 TYPE_1__* memorystatus_get_first_proc_locked (unsigned int*,int) ;
 TYPE_1__* memorystatus_get_next_proc_locked (unsigned int*,TYPE_1__*,int) ;
 int memorystatus_init_jetsam_snapshot_locked (int *,int ) ;
 int memorystatus_jetsam_policy ;
 TYPE_7__* memorystatus_jetsam_snapshot ;
 scalar_t__ memorystatus_jetsam_snapshot_count ;
 int memorystatus_kill_proc (TYPE_1__*,int ,scalar_t__,int*) ;
 scalar_t__ os_reason_create (int ,int ) ;
 int os_reason_free (scalar_t__) ;
 int printf (char*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 TYPE_1__* proc_ref_locked (TYPE_1__*) ;
 int proc_rele (TYPE_1__*) ;
 int proc_rele_locked (TYPE_1__*) ;

__attribute__((used)) static boolean_t
memorystatus_kill_hiwat_proc(uint32_t *errors, boolean_t *purged)
{
 pid_t aPid = 0;
 proc_t p = PROC_NULL, next_p = PROC_NULL;
 boolean_t new_snapshot = FALSE, killed = FALSE, freed_mem = FALSE;
 unsigned int i = 0;
 uint32_t aPid_ep;
 os_reason_t jetsam_reason = OS_REASON_NULL;
 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_JETSAM_HIWAT) | DBG_FUNC_START,
  memorystatus_available_pages, 0, 0, 0, 0);

 jetsam_reason = os_reason_create(OS_REASON_JETSAM, JETSAM_REASON_MEMORY_HIGHWATER);
 if (jetsam_reason == OS_REASON_NULL) {
  printf("memorystatus_kill_hiwat_proc: failed to allocate exit reason\n");
 }

 proc_list_lock();

 next_p = memorystatus_get_first_proc_locked(&i, TRUE);
 while (next_p) {
  uint64_t footprint_in_bytes = 0;
  uint64_t memlimit_in_bytes = 0;
  boolean_t skip = 0;

  p = next_p;
  next_p = memorystatus_get_next_proc_locked(&i, p, TRUE);

  aPid = p->p_pid;
  aPid_ep = p->p_memstat_effectivepriority;

  if (p->p_memstat_state & (P_MEMSTAT_ERROR | P_MEMSTAT_TERMINATED)) {
   continue;
  }


  if (p->p_memstat_memlimit <= 0) {
   continue;
  }

  footprint_in_bytes = get_task_phys_footprint(p->task);
  memlimit_in_bytes = (((uint64_t)p->p_memstat_memlimit) * 1024ULL * 1024ULL);
  skip = (footprint_in_bytes <= memlimit_in_bytes);
  if (skip) {
   continue;
  } else {

   if (memorystatus_jetsam_snapshot_count == 0) {
    memorystatus_init_jetsam_snapshot_locked(((void*)0),0);
    new_snapshot = TRUE;
   }

   if (proc_ref_locked(p) == p) {






    p->p_memstat_state |= P_MEMSTAT_TERMINATED;

    proc_list_unlock();
   } else {






    i = 0;
    next_p = memorystatus_get_first_proc_locked(&i, TRUE);
    continue;
   }

   freed_mem = memorystatus_kill_proc(p, kMemorystatusKilledHiwat, jetsam_reason, &killed);


   if (freed_mem) {
    if (killed == FALSE) {

     *purged = TRUE;

     proc_list_lock();
     p->p_memstat_state &= ~P_MEMSTAT_TERMINATED;
     proc_list_unlock();
    }
    proc_rele(p);
    goto exit;
   }




   proc_list_lock();
   proc_rele_locked(p);
   p->p_memstat_state &= ~P_MEMSTAT_TERMINATED;
   p->p_memstat_state |= P_MEMSTAT_ERROR;
   *errors += 1;

   i = 0;
   next_p = memorystatus_get_first_proc_locked(&i, TRUE);
  }
 }

 proc_list_unlock();

exit:
 os_reason_free(jetsam_reason);


 if (new_snapshot && !killed) {
  proc_list_lock();
  memorystatus_jetsam_snapshot->entry_count = memorystatus_jetsam_snapshot_count = 0;
  proc_list_unlock();
 }

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_JETSAM_HIWAT) | DBG_FUNC_END,
         memorystatus_available_pages, killed ? aPid : 0, 0, 0, 0);

 return killed;
}
