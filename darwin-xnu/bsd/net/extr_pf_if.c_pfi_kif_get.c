
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif_cmp {int pfik_name; } ;
struct pfi_kif {int pfik_dynaddrs; int pfik_tzero; int pfik_name; } ;
typedef int s ;


 int M_WAITOK ;
 int M_ZERO ;
 int PFI_MTYPE ;
 struct pfi_kif* RB_FIND (int ,int *,struct pfi_kif*) ;
 int RB_INSERT (int ,int *,struct pfi_kif*) ;
 int TAILQ_INIT (int *) ;
 struct pfi_kif* _MALLOC (int,int ,int) ;
 int bzero (struct pfi_kif_cmp*,int) ;
 int pf_calendar_time_second () ;
 int pfi_ifhead ;
 int pfi_ifs ;
 int strlcpy (int ,char const*,int) ;

struct pfi_kif *
pfi_kif_get(const char *kif_name)
{
 struct pfi_kif *kif;
 struct pfi_kif_cmp s;

 bzero(&s, sizeof (s));
 strlcpy(s.pfik_name, kif_name, sizeof (s.pfik_name));
 if ((kif = RB_FIND(pfi_ifhead, &pfi_ifs,
     (struct pfi_kif *)(void *)&s)) != ((void*)0))
  return (kif);


 if ((kif = _MALLOC(sizeof (*kif), PFI_MTYPE, M_WAITOK|M_ZERO)) == ((void*)0))
  return (((void*)0));

 strlcpy(kif->pfik_name, kif_name, sizeof (kif->pfik_name));
 kif->pfik_tzero = pf_calendar_time_second();
 TAILQ_INIT(&kif->pfik_dynaddrs);

 RB_INSERT(pfi_ifhead, &pfi_ifs, kif);
 return (kif);
}
