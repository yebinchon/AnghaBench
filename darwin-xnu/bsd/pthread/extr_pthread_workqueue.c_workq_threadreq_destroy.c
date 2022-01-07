
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* workq_threadreq_t ;
typedef int proc_t ;
struct TYPE_5__ {int tr_flags; int tr_state; } ;


 int TR_FLAG_KEVENT ;
 int TR_FLAG_WORKLOOP ;
 int TR_STATE_IDLE ;
 int kqueue_threadreq_cancel (int ,TYPE_1__*) ;
 int workq_zone_threadreq ;
 int zfree (int ,TYPE_1__*) ;

__attribute__((used)) static void
workq_threadreq_destroy(proc_t p, workq_threadreq_t req)
{
 req->tr_state = TR_STATE_IDLE;
 if (req->tr_flags & (TR_FLAG_WORKLOOP | TR_FLAG_KEVENT)) {
  kqueue_threadreq_cancel(p, req);
 } else {
  zfree(workq_zone_threadreq, req);
 }
}
