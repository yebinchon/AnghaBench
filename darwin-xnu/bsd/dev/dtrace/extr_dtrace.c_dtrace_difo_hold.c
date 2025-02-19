
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_4__ {scalar_t__ dtdv_id; } ;
typedef TYPE_1__ dtrace_difv_t ;
struct TYPE_5__ {scalar_t__ dtdo_refcnt; size_t dtdo_varlen; TYPE_1__* dtdo_vartab; } ;
typedef TYPE_2__ dtrace_difo_t ;


 int ASSERT (int) ;
 scalar_t__ DIF_VAR_VTIMESTAMP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_lock ;
 int dtrace_vtime_enable () ;
 int dtrace_vtime_references ;

__attribute__((used)) static void
dtrace_difo_hold(dtrace_difo_t *dp)
{
 uint_t i;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 dp->dtdo_refcnt++;
 ASSERT(dp->dtdo_refcnt != 0);





 for (i = 0; i < dp->dtdo_varlen; i++) {
  dtrace_difv_t *v = &dp->dtdo_vartab[i];

  if (v->dtdv_id != DIF_VAR_VTIMESTAMP)
   continue;

  if (dtrace_vtime_references++ == 0)
   dtrace_vtime_enable();
 }
}
