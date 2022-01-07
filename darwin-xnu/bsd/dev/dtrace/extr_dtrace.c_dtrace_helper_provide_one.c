
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int proc_t ;
typedef int int32_t ;
struct TYPE_16__ {char* (* dtms_provider_name ) (void*) ;int (* dtms_create_probe ) (int ,void*,TYPE_4__*) ;void* (* dtms_provide_proc ) (int ,int *,int *) ;} ;
typedef TYPE_1__ dtrace_mops_t ;
struct TYPE_17__ {int dtm_arg; int dtm_count; TYPE_1__ dtm_mops; } ;
typedef TYPE_2__ dtrace_meta_t ;
struct TYPE_18__ {void* member_1; int member_0; } ;
typedef TYPE_3__ dtrace_match_cond_t ;
typedef int dtrace_helper_provdesc_t ;
struct TYPE_19__ {char* dthpb_func; char* dthpb_name; char* dthpb_ntypes; char* dthpb_xtypes; int dthpb_xargc; int dthpb_nargc; int * dthpb_args; scalar_t__ dthpb_nenoffs; int * dthpb_enoffs; int dthpb_noffs; int * dthpb_offs; int dthpb_base; int dthpb_mod; } ;
typedef TYPE_4__ dtrace_helper_probedesc_t ;
struct TYPE_20__ {int dofs_size; int dofs_entsize; scalar_t__ dofs_offset; } ;
typedef TYPE_5__ dof_sec_t ;
struct TYPE_21__ {int dofpv_strtab; int dofpv_probes; int dofpv_prargs; int dofpv_proffs; int dofpv_prenoffs; } ;
typedef TYPE_6__ dof_provider_t ;
struct TYPE_22__ {int dofpr_func; int dofpr_name; int dofpr_offidx; int dofpr_enoffidx; int dofpr_argidx; int dofpr_nargv; int dofpr_xargv; int dofpr_xargc; int dofpr_nargc; scalar_t__ dofpr_nenoffs; int dofpr_noffs; int dofpr_addr; } ;
typedef TYPE_7__ dof_probe_t ;
struct TYPE_23__ {int dofhp_addr; int dofhp_mod; scalar_t__ dofhp_dof; } ;
typedef TYPE_8__ dof_helper_t ;
struct TYPE_24__ {int dofh_secsize; scalar_t__* dofh_ident; scalar_t__ dofh_secoff; } ;
typedef TYPE_9__ dof_hdr_t ;


 int ASSERT (int ) ;
 size_t DOF_ID_VERSION ;
 int DOF_SECT_NONE ;
 scalar_t__ DOF_VERSION_1 ;
 int dtrace_cond_provider_match ;
 int dtrace_dofprov2hprov (int *,TYPE_6__*,char*) ;
 int dtrace_enabling_matchall_with_cond (TYPE_3__*) ;
 TYPE_2__* dtrace_meta_pid ;
 void* stub1 (int ,int *,int *) ;
 int stub2 (int ,void*,TYPE_4__*) ;
 char* stub3 (void*) ;

__attribute__((used)) static void
dtrace_helper_provide_one(dof_helper_t *dhp, dof_sec_t *sec, proc_t *p)
{
 uintptr_t daddr = (uintptr_t)dhp->dofhp_dof;
 dof_hdr_t *dof = (dof_hdr_t *)daddr;
 dof_sec_t *str_sec, *prb_sec, *arg_sec, *off_sec, *enoff_sec;
 dof_provider_t *provider;
 dof_probe_t *probe;
 uint32_t *off, *enoff;
 uint8_t *arg;
 char *strtab;
 uint_t i, nprobes;
 dtrace_helper_provdesc_t dhpv;
 dtrace_helper_probedesc_t dhpb;
 dtrace_meta_t *meta = dtrace_meta_pid;
 dtrace_mops_t *mops = &meta->dtm_mops;
 void *parg;

 provider = (dof_provider_t *)(uintptr_t)(daddr + sec->dofs_offset);
 str_sec = (dof_sec_t *)(uintptr_t)(daddr + dof->dofh_secoff +
     provider->dofpv_strtab * dof->dofh_secsize);
 prb_sec = (dof_sec_t *)(uintptr_t)(daddr + dof->dofh_secoff +
     provider->dofpv_probes * dof->dofh_secsize);
 arg_sec = (dof_sec_t *)(uintptr_t)(daddr + dof->dofh_secoff +
     provider->dofpv_prargs * dof->dofh_secsize);
 off_sec = (dof_sec_t *)(uintptr_t)(daddr + dof->dofh_secoff +
     provider->dofpv_proffs * dof->dofh_secsize);

 strtab = (char *)(uintptr_t)(daddr + str_sec->dofs_offset);
 off = (uint32_t *)(uintptr_t)(daddr + off_sec->dofs_offset);
 arg = (uint8_t *)(uintptr_t)(daddr + arg_sec->dofs_offset);
 enoff = ((void*)0);




 if (dof->dofh_ident[DOF_ID_VERSION] != DOF_VERSION_1 &&
     provider->dofpv_prenoffs != DOF_SECT_NONE) {
  enoff_sec = (dof_sec_t *)(uintptr_t)(daddr + dof->dofh_secoff +
      provider->dofpv_prenoffs * dof->dofh_secsize);
  enoff = (uint32_t *)(uintptr_t)(daddr + enoff_sec->dofs_offset);
 }

 nprobes = prb_sec->dofs_size / prb_sec->dofs_entsize;




 dtrace_dofprov2hprov(&dhpv, provider, strtab);

 if ((parg = mops->dtms_provide_proc(meta->dtm_arg, &dhpv, p)) == ((void*)0))
  return;

 meta->dtm_count++;




 for (i = 0; i < nprobes; i++) {
  probe = (dof_probe_t *)(uintptr_t)(daddr +
      prb_sec->dofs_offset + i * prb_sec->dofs_entsize);

  dhpb.dthpb_mod = dhp->dofhp_mod;
  dhpb.dthpb_func = strtab + probe->dofpr_func;
  dhpb.dthpb_name = strtab + probe->dofpr_name;

  dhpb.dthpb_base = probe->dofpr_addr;



  dhpb.dthpb_offs = (int32_t *)(off + probe->dofpr_offidx);
  dhpb.dthpb_noffs = probe->dofpr_noffs;
  if (enoff != ((void*)0)) {
   dhpb.dthpb_enoffs = (int32_t *)(enoff + probe->dofpr_enoffidx);
   dhpb.dthpb_nenoffs = probe->dofpr_nenoffs;
  } else {
   dhpb.dthpb_enoffs = ((void*)0);
   dhpb.dthpb_nenoffs = 0;
  }
  dhpb.dthpb_args = arg + probe->dofpr_argidx;
  dhpb.dthpb_nargc = probe->dofpr_nargc;
  dhpb.dthpb_xargc = probe->dofpr_xargc;
  dhpb.dthpb_ntypes = strtab + probe->dofpr_nargv;
  dhpb.dthpb_xtypes = strtab + probe->dofpr_xargv;

  mops->dtms_create_probe(meta->dtm_arg, parg, &dhpb);
 }






 char *prov_name = mops->dtms_provider_name(parg);
 ASSERT(prov_name != ((void*)0));
 dtrace_match_cond_t cond = {dtrace_cond_provider_match, (void*)prov_name};

 dtrace_enabling_matchall_with_cond(&cond);
}
