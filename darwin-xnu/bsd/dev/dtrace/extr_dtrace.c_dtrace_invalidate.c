
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* dtps_enable ) (void*,dtrace_id_t,void*) ;} ;
struct TYPE_4__ {int dtpv_defunct; TYPE_1__ dtpv_pops; } ;
typedef TYPE_2__ dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;


 int ASSERT (int) ;
 scalar_t__ dtrace_enable_nullop ;
 int dtrace_lock ;
 int dtrace_provider_lock ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
dtrace_invalidate(dtrace_provider_id_t id)
{
 dtrace_provider_t *pvp = (dtrace_provider_t *)id;

 ASSERT(pvp->dtpv_pops.dtps_enable !=
     (int (*)(void *, dtrace_id_t, void *))dtrace_enable_nullop);

 lck_mtx_lock(&dtrace_provider_lock);
 lck_mtx_lock(&dtrace_lock);

 pvp->dtpv_defunct = 1;

 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&dtrace_provider_lock);
}
