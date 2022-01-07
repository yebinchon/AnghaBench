
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dtpk_id; int * dtpk_fmatch; int * dtpk_nmatch; int * dtpk_mmatch; int * dtpk_pmatch; void* dtpk_name; void* dtpk_func; void* dtpk_mod; void* dtpk_prov; } ;
typedef TYPE_1__ dtrace_probekey_t ;
struct TYPE_6__ {scalar_t__ dtpd_id; int dtpd_name; int dtpd_func; int dtpd_mod; int dtpd_provider; } ;
typedef TYPE_2__ dtrace_probedesc_t ;


 scalar_t__ DTRACE_IDNONE ;
 int dtrace_match_nonzero ;
 int dtrace_match_nul ;
 void* dtrace_probekey_func (int ) ;
 int * dtrace_probekey_module_func (int ) ;
 void* dtrace_strref (int ) ;

__attribute__((used)) static void
dtrace_probekey(const dtrace_probedesc_t *pdp, dtrace_probekey_t *pkp)
{

 pkp->dtpk_prov = dtrace_strref(pdp->dtpd_provider);
 pkp->dtpk_pmatch = dtrace_probekey_func(pdp->dtpd_provider);

 pkp->dtpk_mod = dtrace_strref(pdp->dtpd_mod);
 pkp->dtpk_mmatch = dtrace_probekey_module_func(pdp->dtpd_mod);

 pkp->dtpk_func = dtrace_strref(pdp->dtpd_func);
 pkp->dtpk_fmatch = dtrace_probekey_func(pdp->dtpd_func);

 pkp->dtpk_name = dtrace_strref(pdp->dtpd_name);
 pkp->dtpk_nmatch = dtrace_probekey_func(pdp->dtpd_name);

 pkp->dtpk_id = pdp->dtpd_id;

 if (pkp->dtpk_id == DTRACE_IDNONE &&
     pkp->dtpk_pmatch == &dtrace_match_nul &&
     pkp->dtpk_mmatch == &dtrace_match_nul &&
     pkp->dtpk_fmatch == &dtrace_match_nul &&
     pkp->dtpk_nmatch == &dtrace_match_nul)
  pkp->dtpk_fmatch = &dtrace_match_nonzero;
}
