
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zoneid_t ;
typedef int uint32_t ;
typedef int uid_t ;
typedef int dtrace_probekey_t ;
typedef int dtrace_probedesc_t ;
struct TYPE_12__ {TYPE_3__* dten_vstate; } ;
typedef TYPE_4__ dtrace_enabling_t ;
typedef int dtrace_ecbdesc_t ;
struct TYPE_11__ {TYPE_2__* dtvs_state; } ;
struct TYPE_9__ {int dcr_cred; } ;
struct TYPE_10__ {TYPE_1__ dts_cred; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_cred2priv (int ,int *,int *,int *) ;
 int * dtrace_ecb_create_cache ;
 int dtrace_ecb_create_enable (int *,TYPE_4__*,int *) ;
 int dtrace_lock ;
 int dtrace_match (int *,int ,int ,int ,int (*) (int *,TYPE_4__*,int *),TYPE_4__*,int *) ;
 int dtrace_probekey (int const*,int *) ;
 int dtrace_probekey_release (int *) ;

__attribute__((used)) static int
dtrace_probe_enable(const dtrace_probedesc_t *desc, dtrace_enabling_t *enab, dtrace_ecbdesc_t *ep)
{
 dtrace_probekey_t pkey;
 uint32_t priv;
 uid_t uid;
 zoneid_t zoneid;
 int err;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 dtrace_ecb_create_cache = ((void*)0);

 if (desc == ((void*)0)) {




  (void) dtrace_ecb_create_enable(((void*)0), enab, ep);
  return (0);
 }

 dtrace_probekey(desc, &pkey);
 dtrace_cred2priv(enab->dten_vstate->dtvs_state->dts_cred.dcr_cred,
     &priv, &uid, &zoneid);

 err = dtrace_match(&pkey, priv, uid, zoneid, dtrace_ecb_create_enable, enab, ep);

 dtrace_probekey_release(&pkey);

 return err;
}
