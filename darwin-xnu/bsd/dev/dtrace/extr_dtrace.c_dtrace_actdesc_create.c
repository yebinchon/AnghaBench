
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ dtrace_actkind_t ;
struct TYPE_4__ {int dtad_refcnt; scalar_t__ dtad_arg; scalar_t__ dtad_uarg; int dtad_ntuple; scalar_t__ dtad_kind; } ;
typedef TYPE_1__ dtrace_actdesc_t ;


 int ASSERT (int) ;
 int DTRACEACT_ISPRINTFLIKE (scalar_t__) ;
 scalar_t__ DTRACEACT_PRINTA ;
 scalar_t__ KERNELBASE ;
 int KM_SLEEP ;
 TYPE_1__* kmem_zalloc (int,int ) ;

__attribute__((used)) static dtrace_actdesc_t *
dtrace_actdesc_create(dtrace_actkind_t kind, uint32_t ntuple,
    uint64_t uarg, uint64_t arg)
{
 dtrace_actdesc_t *act;

 ASSERT(!DTRACEACT_ISPRINTFLIKE(kind) || (arg != 0 &&
     arg >= KERNELBASE) || (arg == 0 && kind == DTRACEACT_PRINTA));

 act = kmem_zalloc(sizeof (dtrace_actdesc_t), KM_SLEEP);
 act->dtad_kind = kind;
 act->dtad_ntuple = ntuple;
 act->dtad_uarg = uarg;
 act->dtad_arg = arg;
 act->dtad_refcnt = 1;

 return (act);
}
