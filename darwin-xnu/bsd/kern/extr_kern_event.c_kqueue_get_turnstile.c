
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct turnstile {int dummy; } ;
struct TYPE_10__ {TYPE_5__* kqwl; TYPE_1__* kq; } ;
typedef TYPE_3__ kqueue_t ;
struct TYPE_9__ {int kqr_state; } ;
struct TYPE_11__ {int kqwl_p; TYPE_2__ kqwl_request; struct turnstile* kqwl_turnstile; } ;
struct TYPE_8__ {int kq_state; } ;


 int KQR_ALLOCATED_TURNSTILE ;
 int KQ_WORKLOOP ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_WORKLOOPS ;
 scalar_t__ filt_wlturnstile_interlock_is_workq (TYPE_5__*) ;
 int kq_req_lock (TYPE_3__) ;
 int kq_req_unlock (TYPE_5__*) ;
 int os_atomic_load (int*,int ) ;
 struct turnstile* os_atomic_load_with_dependency_on (struct turnstile**,int) ;
 int os_atomic_or (int*,int,int ) ;
 int relaxed ;
 int release ;
 struct turnstile* turnstile_alloc () ;
 int turnstile_deallocate (struct turnstile*) ;
 struct turnstile* turnstile_prepare (uintptr_t,struct turnstile**,struct turnstile*,int ) ;
 int workq_kern_threadreq_lock (int ) ;
 int workq_kern_threadreq_unlock (int ) ;

__attribute__((used)) static struct turnstile *
kqueue_get_turnstile(kqueue_t kqu, bool can_alloc)
{
 uint8_t kqr_state;

 if ((kqu.kq->kq_state & KQ_WORKLOOP) == 0) {
  return TURNSTILE_NULL;
 }

 kqr_state = os_atomic_load(&kqu.kqwl->kqwl_request.kqr_state, relaxed);
 if (kqr_state & KQR_ALLOCATED_TURNSTILE) {

  return os_atomic_load_with_dependency_on(&kqu.kqwl->kqwl_turnstile,
    kqr_state);
 }

 if (!can_alloc) {
  return TURNSTILE_NULL;
 }

 struct turnstile *ts = turnstile_alloc(), *free_ts = TURNSTILE_NULL;

 kq_req_lock(kqu);
 if (filt_wlturnstile_interlock_is_workq(kqu.kqwl)) {
  workq_kern_threadreq_lock(kqu.kqwl->kqwl_p);
 }

 if (kqu.kqwl->kqwl_request.kqr_state & KQR_ALLOCATED_TURNSTILE) {
  free_ts = ts;
  ts = kqu.kqwl->kqwl_turnstile;
 } else {
  ts = turnstile_prepare((uintptr_t)kqu.kqwl, &kqu.kqwl->kqwl_turnstile,
    ts, TURNSTILE_WORKLOOPS);


  os_atomic_or(&kqu.kqwl->kqwl_request.kqr_state,
    KQR_ALLOCATED_TURNSTILE, release);
 }

 if (filt_wlturnstile_interlock_is_workq(kqu.kqwl)) {
  workq_kern_threadreq_unlock(kqu.kqwl->kqwl_p);
 }
 kq_req_unlock(kqu.kqwl);

 if (free_ts) {
  turnstile_deallocate(free_ts);
 }
 return ts;
}
