
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lck_mtx_is_ext; int lck_mtx_pad32; } ;
struct TYPE_10__ {int type; } ;
struct TYPE_11__ {TYPE_1__ lck_mtx; int lck_mtx_attr; TYPE_4__* lck_mtx_grp; TYPE_2__ lck_mtx_deb; } ;
typedef TYPE_3__ lck_mtx_ext_t ;
struct TYPE_12__ {int lck_grp_attr; } ;
typedef TYPE_4__ lck_grp_t ;
struct TYPE_13__ {int lck_attr_val; } ;
typedef TYPE_5__ lck_attr_t ;


 int LCK_ATTR_DEBUG ;
 int LCK_GRP_ATTR_STAT ;
 int LCK_MTX_ATTR_DEBUG ;
 int LCK_MTX_ATTR_STAT ;
 int MUTEX_TAG ;
 int bzero (void*,int) ;

__attribute__((used)) static void
lck_mtx_ext_init(
 lck_mtx_ext_t *lck,
 lck_grp_t *grp,
 lck_attr_t *attr)
{
 bzero((void *)lck, sizeof(lck_mtx_ext_t));

 if ((attr->lck_attr_val) & LCK_ATTR_DEBUG) {
  lck->lck_mtx_deb.type = MUTEX_TAG;
  lck->lck_mtx_attr |= LCK_MTX_ATTR_DEBUG;
 }

 lck->lck_mtx_grp = grp;

 if (grp->lck_grp_attr & LCK_GRP_ATTR_STAT)
  lck->lck_mtx_attr |= LCK_MTX_ATTR_STAT;

 lck->lck_mtx.lck_mtx_is_ext = 1;
 lck->lck_mtx.lck_mtx_pad32 = 0xFFFFFFFF;
}
