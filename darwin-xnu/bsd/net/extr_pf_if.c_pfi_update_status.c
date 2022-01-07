
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif_cmp {int pfik_name; } ;
struct pfi_kif {int pfik_tzero; scalar_t__*** pfik_bytes; scalar_t__*** pfik_packets; } ;
struct pf_status {scalar_t__*** bcounters; scalar_t__*** pcounters; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct pfi_kif* RB_FIND (int ,int *,struct pfi_kif*) ;
 int bzero (scalar_t__***,int) ;
 int pf_calendar_time_second () ;
 int pf_lock ;
 int pfi_ifhead ;
 int pfi_ifs ;
 int strlcpy (int ,char const*,int) ;

void
pfi_update_status(const char *name, struct pf_status *pfs)
{
 struct pfi_kif *p;
 struct pfi_kif_cmp key;
 int i, j, k;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 strlcpy(key.pfik_name, name, sizeof (key.pfik_name));
 p = RB_FIND(pfi_ifhead, &pfi_ifs, (struct pfi_kif *)(void *)&key);
 if (p == ((void*)0))
  return;

 if (pfs != ((void*)0)) {
  bzero(pfs->pcounters, sizeof (pfs->pcounters));
  bzero(pfs->bcounters, sizeof (pfs->bcounters));
  for (i = 0; i < 2; i++)
   for (j = 0; j < 2; j++)
    for (k = 0; k < 2; k++) {
     pfs->pcounters[i][j][k] +=
      p->pfik_packets[i][j][k];
     pfs->bcounters[i][j] +=
      p->pfik_bytes[i][j][k];
    }
 } else {

  bzero(p->pfik_packets, sizeof (p->pfik_packets));
  bzero(p->pfik_bytes, sizeof (p->pfik_bytes));
  p->pfik_tzero = pf_calendar_time_second();
 }
}
