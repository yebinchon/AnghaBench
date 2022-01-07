
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int x86_saved_state_t ;
struct TYPE_4__ {int cs; } ;
struct TYPE_5__ {TYPE_1__ isf; } ;
typedef TYPE_2__ x86_saved_state64_t ;
typedef int uint64_t ;
struct mt_cpu {int* mtc_snaps; int * mtc_counts; } ;


 int CTR_FIX_POS (unsigned int) ;
 int CTR_MAX ;
 int DBG_MONOTONIC ;
 int DBG_MT_DEBUG ;
 scalar_t__ FALSE ;
 int GLOBAL_STATUS ;
 int KDBG (int ,unsigned int,unsigned int) ;
 int KDBG_EVENTID (int ,int ,int) ;
 int KDBG_RELEASE (int ,unsigned int,int) ;
 unsigned int MT_CORE_NFIXED ;
 int UINT64_C (int) ;
 int assert (int) ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 int memory_order_relaxed ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int* mt_core_reset_values ;
 int mt_core_set_snap (unsigned int,int) ;
 struct mt_cpu* mt_cur_cpu () ;
 scalar_t__ mt_debug ;
 unsigned int mt_microstackshot_ctr ;
 int mt_microstackshot_ctx ;
 int mt_microstackshot_pmi_handler (int,int ) ;
 scalar_t__ mt_microstackshots ;
 int mt_mtc_update_count (struct mt_cpu*,unsigned int) ;
 int mt_pmis ;
 int rdmsr64 (int ) ;
 TYPE_2__* saved_state64 (int *) ;

__attribute__((used)) static int
mt_pmi_x86_64(x86_saved_state_t *state)
{
 uint64_t status;
 struct mt_cpu *mtc;

 assert(ml_get_interrupts_enabled() == FALSE);
 mtc = mt_cur_cpu();
 status = rdmsr64(GLOBAL_STATUS);

 (void)atomic_fetch_add_explicit(&mt_pmis, 1, memory_order_relaxed);

 for (unsigned int i = 0; i < MT_CORE_NFIXED; i++) {
  if (status & CTR_FIX_POS(i)) {
   uint64_t prior = CTR_MAX - mtc->mtc_snaps[i];
   assert(prior <= CTR_MAX);
   prior += 1;

   uint64_t delta = mt_mtc_update_count(mtc, i);
   mtc->mtc_counts[i] += delta;

   if (mt_microstackshots && mt_microstackshot_ctr == i) {
    x86_saved_state64_t *state64 = saved_state64(state);
    bool user_mode = (state64->isf.cs & 0x3) ? 1 : 0;
    KDBG_RELEASE(KDBG_EVENTID(DBG_MONOTONIC, DBG_MT_DEBUG, 1),
      mt_microstackshot_ctr, user_mode);
    mt_microstackshot_pmi_handler(user_mode, mt_microstackshot_ctx);
   } else if (mt_debug) {
    KDBG(KDBG_EVENTID(DBG_MONOTONIC, DBG_MT_DEBUG, 2),
      mt_microstackshot_ctr, i);
   }

   mtc->mtc_snaps[i] = mt_core_reset_values[i];
   mt_core_set_snap(i, mt_core_reset_values[i]);
  }
 }


 if (status & ((UINT64_C(1) << 4) - 1)) {
  extern void kpc_pmi_handler(x86_saved_state_t *state);
  kpc_pmi_handler(state);
 }
 return 0;
}
