
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zoneid_t ;
typedef int uint32_t ;
typedef int uid_t ;
struct TYPE_7__ {int dtpv_name; scalar_t__ dtpv_defunct; } ;
typedef TYPE_1__ dtrace_provider_t ;
struct TYPE_8__ {int (* dtpk_pmatch ) (int ,int ,int ) ;int (* dtpk_mmatch ) (int ,int ,int ) ;int (* dtpk_fmatch ) (int ,int ,int ) ;int (* dtpk_nmatch ) (int ,int ,int ) ;int dtpk_name; int dtpk_func; int dtpk_mod; int dtpk_prov; } ;
typedef TYPE_2__ dtrace_probekey_t ;
struct TYPE_9__ {int dtpr_name; int dtpr_func; int dtpr_mod; TYPE_1__* dtpr_provider; } ;
typedef TYPE_3__ dtrace_probe_t ;


 scalar_t__ dtrace_match_priv (TYPE_3__ const*,int ,int ,int ) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;

__attribute__((used)) static int
dtrace_match_probe(const dtrace_probe_t *prp, const dtrace_probekey_t *pkp,
    uint32_t priv, uid_t uid, zoneid_t zoneid)
{
 dtrace_provider_t *pvp = prp->dtpr_provider;
 int rv;

 if (pvp->dtpv_defunct)
  return (0);

 if ((rv = pkp->dtpk_pmatch(pvp->dtpv_name, pkp->dtpk_prov, 0)) <= 0)
  return (rv);

 if ((rv = pkp->dtpk_mmatch(prp->dtpr_mod, pkp->dtpk_mod, 0)) <= 0)
  return (rv);

 if ((rv = pkp->dtpk_fmatch(prp->dtpr_func, pkp->dtpk_func, 0)) <= 0)
  return (rv);

 if ((rv = pkp->dtpk_nmatch(prp->dtpr_name, pkp->dtpk_name, 0)) <= 0)
  return (rv);

 if (dtrace_match_priv(prp, priv, uid, zoneid) == 0)
  return (0);

 return (rv);
}
