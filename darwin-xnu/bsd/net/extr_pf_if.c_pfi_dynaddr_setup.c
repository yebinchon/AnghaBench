
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tblname ;
struct pfi_dynaddr {int pfid_net; int pfid_iflags; TYPE_6__* pfid_kif; TYPE_4__* pfid_kt; scalar_t__ pfid_af; } ;
struct pf_ruleset {int dummy; } ;
struct TYPE_11__ {struct pfi_dynaddr* dyn; } ;
struct TYPE_9__ {int mask; } ;
struct TYPE_10__ {int ifname; TYPE_1__ a; } ;
struct pf_addr_wrap {scalar_t__ type; int iflags; TYPE_3__ p; TYPE_2__ v; } ;
typedef scalar_t__ sa_family_t ;
struct TYPE_13__ {int pfik_dynaddrs; } ;
struct TYPE_12__ {int pfrkt_flags; } ;


 scalar_t__ AF_INET ;
 int IFG_ALL ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFI_AFLAG_BROADCAST ;
 int PFI_AFLAG_NETWORK ;
 int PFI_AFLAG_NOALIAS ;
 int PFI_AFLAG_PEER ;
 int PFI_KIF_REF_RULE ;
 int PFR_TFLAG_ACTIVE ;
 scalar_t__ PF_ADDR_DYNIFTL ;
 int PF_RESERVED_ANCHOR ;
 int PF_TABLE_NAME_SIZE ;
 int PR_WAITOK ;
 int TAILQ_INSERT_TAIL (int *,struct pfi_dynaddr*,int ) ;
 int bzero (struct pfi_dynaddr*,int) ;
 int entry ;
 struct pf_ruleset* pf_find_or_create_ruleset (int ) ;
 int pf_lock ;
 int pf_remove_if_empty_ruleset (struct pf_ruleset*) ;
 int pfi_addr_pl ;
 void* pfi_kif_get (int ) ;
 int pfi_kif_ref (TYPE_6__*,int ) ;
 int pfi_kif_unref (TYPE_6__*,int ) ;
 int pfi_kif_update (TYPE_6__*) ;
 int pfi_unmask (int *) ;
 TYPE_4__* pfr_attach_table (struct pf_ruleset*,char*) ;
 int pfr_detach_table (TYPE_4__*) ;
 struct pfi_dynaddr* pool_get (int *,int ) ;
 int pool_put (int *,struct pfi_dynaddr*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;
 int strlen (char*) ;

int
pfi_dynaddr_setup(struct pf_addr_wrap *aw, sa_family_t af)
{
 struct pfi_dynaddr *dyn;
 char tblname[PF_TABLE_NAME_SIZE];
 struct pf_ruleset *ruleset = ((void*)0);
 int rv = 0;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (aw->type != PF_ADDR_DYNIFTL)
  return (0);
 if ((dyn = pool_get(&pfi_addr_pl, PR_WAITOK)) == ((void*)0))
  return (1);
 bzero(dyn, sizeof (*dyn));

 if (strcmp(aw->v.ifname, "self") == 0)
  dyn->pfid_kif = pfi_kif_get(IFG_ALL);
 else
  dyn->pfid_kif = pfi_kif_get(aw->v.ifname);
 if (dyn->pfid_kif == ((void*)0)) {
  rv = 1;
  goto _bad;
 }
 pfi_kif_ref(dyn->pfid_kif, PFI_KIF_REF_RULE);

 dyn->pfid_net = pfi_unmask(&aw->v.a.mask);
 if (af == AF_INET && dyn->pfid_net == 32)
  dyn->pfid_net = 128;
 strlcpy(tblname, aw->v.ifname, sizeof (tblname));
 if (aw->iflags & PFI_AFLAG_NETWORK)
  strlcat(tblname, ":network", sizeof (tblname));
 if (aw->iflags & PFI_AFLAG_BROADCAST)
  strlcat(tblname, ":broadcast", sizeof (tblname));
 if (aw->iflags & PFI_AFLAG_PEER)
  strlcat(tblname, ":peer", sizeof (tblname));
 if (aw->iflags & PFI_AFLAG_NOALIAS)
  strlcat(tblname, ":0", sizeof (tblname));
 if (dyn->pfid_net != 128)
  snprintf(tblname + strlen(tblname),
      sizeof (tblname) - strlen(tblname), "/%d", dyn->pfid_net);
 if ((ruleset = pf_find_or_create_ruleset(PF_RESERVED_ANCHOR)) == ((void*)0)) {
  rv = 1;
  goto _bad;
 }

 if ((dyn->pfid_kt = pfr_attach_table(ruleset, tblname)) == ((void*)0)) {
  rv = 1;
  goto _bad;
 }

 dyn->pfid_kt->pfrkt_flags |= PFR_TFLAG_ACTIVE;
 dyn->pfid_iflags = aw->iflags;
 dyn->pfid_af = af;

 TAILQ_INSERT_TAIL(&dyn->pfid_kif->pfik_dynaddrs, dyn, entry);
 aw->p.dyn = dyn;
 pfi_kif_update(dyn->pfid_kif);
 return (0);

_bad:
 if (dyn->pfid_kt != ((void*)0))
  pfr_detach_table(dyn->pfid_kt);
 if (ruleset != ((void*)0))
  pf_remove_if_empty_ruleset(ruleset);
 if (dyn->pfid_kif != ((void*)0))
  pfi_kif_unref(dyn->pfid_kif, PFI_KIF_REF_RULE);
 pool_put(&pfi_addr_pl, dyn);
 return (rv);
}
