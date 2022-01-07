
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_cb {scalar_t__ mtx; } ;


 int FREE (struct ctl_cb*,int ) ;
 int M_TEMP ;
 int ctl_lck_grp ;
 int lck_mtx_free (scalar_t__,int ) ;

__attribute__((used)) static void
kcb_delete(struct ctl_cb *kcb)
{
 if (kcb != 0) {
  if (kcb->mtx != 0)
   lck_mtx_free(kcb->mtx, ctl_lck_grp);
  FREE(kcb, M_TEMP);
 }
}
