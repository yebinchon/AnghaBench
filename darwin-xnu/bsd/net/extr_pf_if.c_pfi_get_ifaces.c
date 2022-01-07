
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int u ;
struct pfi_uif {int pfik_rules; int pfik_states; int pfik_flags; scalar_t__ pfik_tzero; int pfik_bytes; int pfik_packets; int pfik_name; } ;
struct pfi_kif {int pfik_rules; int pfik_states; int pfik_flags; scalar_t__ pfik_tzero; int pfik_bytes; int pfik_packets; int pfik_name; } ;


 int EFAULT ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFI_KIF_REF_RULE ;
 struct pfi_kif* RB_MIN (int ,int *) ;
 struct pfi_kif* RB_NEXT (int ,int *,struct pfi_kif*) ;
 int bcopy (int ,int *,int) ;
 int bzero (struct pfi_uif*,int) ;
 scalar_t__ copyout (struct pfi_uif*,int,int) ;
 scalar_t__ pf_calendar_time_second () ;
 int pf_lock ;
 int pfi_ifhead ;
 int pfi_ifs ;
 int pfi_kif_ref (struct pfi_kif*,int ) ;
 int pfi_kif_unref (struct pfi_kif*,int ) ;
 scalar_t__ pfi_skip_if (char const*,struct pfi_kif*) ;

int
pfi_get_ifaces(const char *name, user_addr_t buf, int *size)
{
 struct pfi_kif *p, *nextp;
 int n = 0;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 for (p = RB_MIN(pfi_ifhead, &pfi_ifs); p; p = nextp) {
  nextp = RB_NEXT(pfi_ifhead, &pfi_ifs, p);
  if (pfi_skip_if(name, p))
   continue;
  if (*size > n++) {
   struct pfi_uif u;

   if (!p->pfik_tzero)
    p->pfik_tzero = pf_calendar_time_second();
   pfi_kif_ref(p, PFI_KIF_REF_RULE);


   bzero(&u, sizeof (u));
   bcopy(p->pfik_name, &u.pfik_name, sizeof (u.pfik_name));
   bcopy(p->pfik_packets, &u.pfik_packets,
       sizeof (u.pfik_packets));
   bcopy(p->pfik_bytes, &u.pfik_bytes,
       sizeof (u.pfik_bytes));
   u.pfik_tzero = p->pfik_tzero;
   u.pfik_flags = p->pfik_flags;
   u.pfik_states = p->pfik_states;
   u.pfik_rules = p->pfik_rules;

   if (copyout(&u, buf, sizeof (u))) {
    pfi_kif_unref(p, PFI_KIF_REF_RULE);
    return (EFAULT);
   }
   buf += sizeof (u);
   nextp = RB_NEXT(pfi_ifhead, &pfi_ifs, p);
   pfi_kif_unref(p, PFI_KIF_REF_RULE);
  }
 }
 *size = n;
 return (0);
}
