
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_osfp_entry {int fp_oses; } ;
struct pf_os_fingerprint {int fp_oses; } ;


 struct pf_osfp_entry* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int fp_entry ;
 int fp_next ;
 int pf_osfp_entry_pl ;
 int pf_osfp_list ;
 int pf_osfp_pl ;
 int pool_put (int *,struct pf_osfp_entry*) ;

void
pf_osfp_flush(void)
{
 struct pf_os_fingerprint *fp;
 struct pf_osfp_entry *entry;

 while ((fp = SLIST_FIRST(&pf_osfp_list))) {
  SLIST_REMOVE_HEAD(&pf_osfp_list, fp_next);
  while ((entry = SLIST_FIRST(&fp->fp_oses))) {
   SLIST_REMOVE_HEAD(&fp->fp_oses, fp_entry);
   pool_put(&pf_osfp_entry_pl, entry);
  }
  pool_put(&pf_osfp_pl, fp);
 }
}
