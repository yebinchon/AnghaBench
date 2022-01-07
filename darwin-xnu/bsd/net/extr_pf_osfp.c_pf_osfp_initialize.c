
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_osfp_entry {int dummy; } ;
struct pf_os_fingerprint {int dummy; } ;


 int SLIST_INIT (int *) ;
 int pf_osfp_entry_pl ;
 int pf_osfp_list ;
 int pf_osfp_pl ;
 int pool_init (int *,int,int ,int ,int ,char*,int *) ;

void
pf_osfp_initialize(void)
{
 pool_init(&pf_osfp_entry_pl, sizeof (struct pf_osfp_entry), 0, 0, 0,
     "pfosfpen", ((void*)0));
 pool_init(&pf_osfp_pl, sizeof (struct pf_os_fingerprint), 0, 0, 0,
     "pfosfp", ((void*)0));
 SLIST_INIT(&pf_osfp_list);
}
