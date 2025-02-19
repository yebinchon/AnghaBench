
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union kds_ptr {scalar_t__ raw; } ;
typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct kd_storage {size_t kds_bufindx; scalar_t__ kds_timestamp; int kds_bufcnt; TYPE_1__* kds_records; } ;
struct kd_bufinfo {union kds_ptr kd_list_tail; } ;
struct TYPE_4__ {size_t debugid; uintptr_t arg1; uintptr_t arg2; uintptr_t arg3; uintptr_t arg4; uintptr_t arg5; } ;
typedef TYPE_1__ kd_buf ;
struct TYPE_5__ {int kdebug_slowcheck; int kdebug_flags; scalar_t__ oldest_time; scalar_t__ enabled; scalar_t__ kds_inuse_count; int * kdebug_iops; } ;


 size_t EVENTS_PER_STORAGE_UNIT ;
 scalar_t__ FALSE ;
 size_t KDBG_EVENTID_MASK ;
 int KDBG_RANGECHECK ;
 scalar_t__ KDBG_TIMESTAMP_MASK ;
 int KDBG_TYPEFILTER_CHECK ;
 int KDBG_VALCHECK ;
 int KDEBUG_ENABLE_PPT ;
 int KDEBUG_ENABLE_SERIAL ;
 int KDEBUG_ENABLE_TRACE ;
 scalar_t__ KDS_PTR_NULL ;
 int OSAddAtomic (int,int *) ;
 int OSCompareAndSwap (size_t,size_t,size_t*) ;
 struct kd_storage* POINTER_FROM_KDS_PTR (union kds_ptr) ;
 int SLOW_NOLOG ;
 scalar_t__ allocate_storage_unit (size_t) ;
 int assert (int) ;
 int disable_preemption () ;
 int enable_preemption () ;
 TYPE_3__ kd_ctrl_page ;
 scalar_t__ kdbg_iop_list_contains_cpu_id (int *,size_t) ;
 int kdbg_set_timestamp_and_cpu (TYPE_1__*,scalar_t__,size_t) ;
 int kdbg_typefilter ;
 int kdbg_wakeup () ;
 struct kd_bufinfo* kdbip ;
 int kdebug_enable ;
 int kdebug_serial_print (size_t,size_t,scalar_t__,uintptr_t,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 size_t kdlog_beg ;
 size_t kdlog_end ;
 size_t kdlog_value1 ;
 size_t kdlog_value2 ;
 size_t kdlog_value3 ;
 size_t kdlog_value4 ;
 scalar_t__ kds_waiter ;
 scalar_t__ n_storage_threshold ;
 scalar_t__ typefilter_is_debugid_allowed (int ,size_t) ;

void
kernel_debug_enter(
 uint32_t coreid,
 uint32_t debugid,
 uint64_t timestamp,
 uintptr_t arg1,
 uintptr_t arg2,
 uintptr_t arg3,
 uintptr_t arg4,
 uintptr_t threadid
 )
{
 uint32_t bindx;
 kd_buf *kd;
 struct kd_bufinfo *kdbp;
 struct kd_storage *kdsp_actual;
 union kds_ptr kds_raw;

 if (kd_ctrl_page.kdebug_slowcheck) {

  if ( (kd_ctrl_page.kdebug_slowcheck & SLOW_NOLOG) || !(kdebug_enable & (KDEBUG_ENABLE_TRACE|KDEBUG_ENABLE_PPT)))
   goto out1;

  if (kd_ctrl_page.kdebug_flags & KDBG_TYPEFILTER_CHECK) {
   if (typefilter_is_debugid_allowed(kdbg_typefilter, debugid))
    goto record_event;
   goto out1;
  }
  else if (kd_ctrl_page.kdebug_flags & KDBG_RANGECHECK) {
   if (debugid >= kdlog_beg && debugid <= kdlog_end)
    goto record_event;
   goto out1;
  }
  else if (kd_ctrl_page.kdebug_flags & KDBG_VALCHECK) {
   if ((debugid & KDBG_EVENTID_MASK) != kdlog_value1 &&
    (debugid & KDBG_EVENTID_MASK) != kdlog_value2 &&
    (debugid & KDBG_EVENTID_MASK) != kdlog_value3 &&
    (debugid & KDBG_EVENTID_MASK) != kdlog_value4)
    goto out1;
  }
 }

record_event:
 if (timestamp < kd_ctrl_page.oldest_time) {
  goto out1;
 }
 disable_preemption();

 if (kd_ctrl_page.enabled == 0)
  goto out;

 kdbp = &kdbip[coreid];
 timestamp &= KDBG_TIMESTAMP_MASK;







retry_q:
 kds_raw = kdbp->kd_list_tail;

 if (kds_raw.raw != KDS_PTR_NULL) {
  kdsp_actual = POINTER_FROM_KDS_PTR(kds_raw);
  bindx = kdsp_actual->kds_bufindx;
 } else {
  kdsp_actual = ((void*)0);
  bindx = EVENTS_PER_STORAGE_UNIT;
 }

 if (kdsp_actual == ((void*)0) || bindx >= EVENTS_PER_STORAGE_UNIT) {
  if (allocate_storage_unit(coreid) == FALSE) {




   goto out;
  }
  goto retry_q;
 }
 if ( !OSCompareAndSwap(bindx, bindx + 1, &kdsp_actual->kds_bufindx))
  goto retry_q;


 if (timestamp < kdsp_actual->kds_timestamp)
  kdsp_actual->kds_timestamp = timestamp;

 kd = &kdsp_actual->kds_records[bindx];

 kd->debugid = debugid;
 kd->arg1 = arg1;
 kd->arg2 = arg2;
 kd->arg3 = arg3;
 kd->arg4 = arg4;
 kd->arg5 = threadid;

 kdbg_set_timestamp_and_cpu(kd, timestamp, coreid);

 OSAddAtomic(1, &kdsp_actual->kds_bufcnt);
out:
 enable_preemption();
out1:
 if ((kds_waiter && kd_ctrl_page.kds_inuse_count >= n_storage_threshold)) {
  kdbg_wakeup();
 }
}
