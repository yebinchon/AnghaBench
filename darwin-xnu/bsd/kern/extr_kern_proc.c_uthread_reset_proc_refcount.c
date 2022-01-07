
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct TYPE_2__ {scalar_t__ uu_pindex; scalar_t__ uu_proc_refcount; } ;


 scalar_t__ proc_ref_tracking_disabled ;

void
uthread_reset_proc_refcount(void *uthread) {
 uthread_t uth;

 uth = (uthread_t) uthread;
 uth->uu_proc_refcount = 0;
}
