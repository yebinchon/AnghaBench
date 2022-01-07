
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb_fcl {int fclist; } ;
struct sfb {int dummy; } ;


 int SFB_BINS ;
 struct sfb_fcl* SFB_FC_LIST (struct sfb*,int) ;
 int STAILQ_EMPTY (int *) ;
 int sfb_fclist_append (struct sfb*,struct sfb_fcl*) ;

__attribute__((used)) static void
sfb_fclists_clean(struct sfb *sp)
{
 int i;


 for (i = 0; i < SFB_BINS; ++i) {
  struct sfb_fcl *fcl = SFB_FC_LIST(sp, i);
  if (!STAILQ_EMPTY(&fcl->fclist))
   sfb_fclist_append(sp, fcl);
 }
}
