
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_10__ {TYPE_2__* p_dtrace_helpers; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_11__ {int dthps_nprovs; size_t dthps_maxprovs; TYPE_3__** dthps_provs; } ;
typedef TYPE_2__ dtrace_helpers_t ;
struct TYPE_13__ {scalar_t__ dofhp_addr; } ;
struct TYPE_12__ {int dthp_ref; int dthp_generation; TYPE_4__ dthp_prov; } ;
typedef TYPE_3__ dtrace_helper_provider_t ;
typedef TYPE_4__ dof_helper_t ;


 int ASSERT (int) ;
 int EALREADY ;
 int ENOSPC ;
 int KM_SLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int bcopy (TYPE_3__**,TYPE_3__**,size_t) ;
 int dtrace_helper_providers_max ;
 int dtrace_lock ;
 int kmem_free (TYPE_3__**,size_t) ;
 void* kmem_zalloc (int,int ) ;

__attribute__((used)) static int
dtrace_helper_provider_add(proc_t* p, dof_helper_t *dofhp, int gen)
{
 dtrace_helpers_t *help;
 dtrace_helper_provider_t *hprov, **tmp_provs;
 uint_t tmp_maxprovs, i;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
 help = p->p_dtrace_helpers;
 ASSERT(help != ((void*)0));





 if (help->dthps_nprovs >= dtrace_helper_providers_max)
  return (ENOSPC);




 for (i = 0; i < help->dthps_nprovs; i++) {
  if (dofhp->dofhp_addr ==
      help->dthps_provs[i]->dthp_prov.dofhp_addr)
   return (EALREADY);
 }

 hprov = kmem_zalloc(sizeof (dtrace_helper_provider_t), KM_SLEEP);
 hprov->dthp_prov = *dofhp;
 hprov->dthp_ref = 1;
 hprov->dthp_generation = gen;




 if (help->dthps_maxprovs == help->dthps_nprovs) {
  tmp_maxprovs = help->dthps_maxprovs;
  tmp_provs = help->dthps_provs;

  if (help->dthps_maxprovs == 0)
   help->dthps_maxprovs = 2;
  else
   help->dthps_maxprovs *= 2;
  if (help->dthps_maxprovs > dtrace_helper_providers_max)
   help->dthps_maxprovs = dtrace_helper_providers_max;

  ASSERT(tmp_maxprovs < help->dthps_maxprovs);

  help->dthps_provs = kmem_zalloc(help->dthps_maxprovs *
      sizeof (dtrace_helper_provider_t *), KM_SLEEP);

  if (tmp_provs != ((void*)0)) {
   bcopy(tmp_provs, help->dthps_provs, tmp_maxprovs *
       sizeof (dtrace_helper_provider_t *));
   kmem_free(tmp_provs, tmp_maxprovs *
       sizeof (dtrace_helper_provider_t *));
  }
 }

 help->dthps_provs[help->dthps_nprovs] = hprov;
 help->dthps_nprovs++;

 return (0);
}
