
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb {struct sfb* sfb_fc_lists; struct sfb* sfb_bins; } ;


 int sfb_bins_zone ;
 int sfb_fcl_zone ;
 int sfb_fclists_clean (struct sfb*) ;
 int sfb_zone ;
 int zfree (int ,struct sfb*) ;

void
sfb_destroy(struct sfb *sp)
{
 sfb_fclists_clean(sp);
 if (sp->sfb_bins != ((void*)0)) {
  zfree(sfb_bins_zone, sp->sfb_bins);
  sp->sfb_bins = ((void*)0);
 }
 if (sp->sfb_fc_lists != ((void*)0)) {
  zfree(sfb_fcl_zone, sp->sfb_fc_lists);
  sp->sfb_fc_lists = ((void*)0);
 }
 zfree(sfb_zone, sp);
}
