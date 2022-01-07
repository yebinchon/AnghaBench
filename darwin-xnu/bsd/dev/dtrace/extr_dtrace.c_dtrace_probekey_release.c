
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtpk_name; int dtpk_func; int dtpk_mod; int dtpk_prov; } ;
typedef TYPE_1__ dtrace_probekey_t ;


 int dtrace_strunref (int ) ;

__attribute__((used)) static void
dtrace_probekey_release(dtrace_probekey_t *pkp)
{
 dtrace_strunref(pkp->dtpk_prov);
 dtrace_strunref(pkp->dtpk_mod);
 dtrace_strunref(pkp->dtpk_func);
 dtrace_strunref(pkp->dtpk_name);
}
