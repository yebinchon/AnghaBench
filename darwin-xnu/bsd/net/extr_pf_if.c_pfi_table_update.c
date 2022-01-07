
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_ktable {char* pfrkt_name; int pfrkt_t; } ;
struct pfi_kif {int * pfik_ifp; } ;


 int CAST_USER_ADDR_T (int ) ;
 int PFR_TFLAG_ALLMASK ;
 int pfi_buffer ;
 int pfi_buffer_cnt ;
 int pfi_instance_add (int *,int,int) ;
 int pfr_set_addrs (int *,int ,int,int*,int *,int *,int *,int ,int ) ;
 int printf (char*,int,char*,int) ;

void
pfi_table_update(struct pfr_ktable *kt, struct pfi_kif *kif, int net, int flags)
{
 int e, size2 = 0;

 pfi_buffer_cnt = 0;

 if (kif->pfik_ifp != ((void*)0))
  pfi_instance_add(kif->pfik_ifp, net, flags);

 if ((e = pfr_set_addrs(&kt->pfrkt_t, CAST_USER_ADDR_T(pfi_buffer),
     pfi_buffer_cnt, &size2, ((void*)0), ((void*)0), ((void*)0), 0, PFR_TFLAG_ALLMASK)))
  printf("pfi_table_update: cannot set %d new addresses "
      "into table %s: %d\n", pfi_buffer_cnt, kt->pfrkt_name, e);
}
