
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_dtrace_helpers; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_6__ {void* dthps_actions; } ;
typedef TYPE_2__ dtrace_helpers_t ;
typedef int dtrace_helper_action_t ;


 int ASSERT (int ) ;
 int DTRACE_NHELPER_ACTIONS ;
 int KM_SLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_helpers ;
 int dtrace_lock ;
 void* kmem_zalloc (int,int ) ;

__attribute__((used)) static dtrace_helpers_t *
dtrace_helpers_create(proc_t *p)
{
 dtrace_helpers_t *help;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
 ASSERT(p->p_dtrace_helpers == ((void*)0));

 help = kmem_zalloc(sizeof (dtrace_helpers_t), KM_SLEEP);
 help->dthps_actions = kmem_zalloc(sizeof (dtrace_helper_action_t *) *
     DTRACE_NHELPER_ACTIONS, KM_SLEEP);

 p->p_dtrace_helpers = help;
 dtrace_helpers++;

 return (help);
}
