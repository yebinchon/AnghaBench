
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int queue_entry_t ;
struct TYPE_6__ {int lck_grp_refcnt; int lck_grp_attr; int lck_grp_name; } ;
typedef TYPE_1__ lck_grp_t ;
struct TYPE_7__ {int grp_attr_val; } ;
typedef TYPE_2__ lck_grp_attr_t ;


 int LCK_ATTR_NONE ;
 TYPE_2__* LCK_GRP_ATTR_NULL ;
 int LCK_GRP_ATTR_STAT ;
 int LCK_GRP_MAX_NAME ;
 int LcksOpts ;
 int assert (int) ;
 int bzero (void*,int) ;
 int enaLkStat ;
 int enqueue_tail (int *,int ) ;
 scalar_t__ lck_grp_cnt ;
 int lck_grp_lock ;
 int lck_grp_queue ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int strlcpy (int ,char const*,int ) ;

void
lck_grp_init(lck_grp_t * grp, const char * grp_name, lck_grp_attr_t * attr)
{

 assert(lck_grp_cnt > 0);

 bzero((void *)grp, sizeof(lck_grp_t));

 (void)strlcpy(grp->lck_grp_name, grp_name, LCK_GRP_MAX_NAME);

 if (attr != LCK_GRP_ATTR_NULL)
  grp->lck_grp_attr = attr->grp_attr_val;
 else if (LcksOpts & enaLkStat)
  grp->lck_grp_attr = LCK_GRP_ATTR_STAT;
 else
  grp->lck_grp_attr = LCK_ATTR_NONE;

 grp->lck_grp_refcnt = 1;

 lck_mtx_lock(&lck_grp_lock);
 enqueue_tail(&lck_grp_queue, (queue_entry_t)grp);
 lck_grp_cnt++;
 lck_mtx_unlock(&lck_grp_lock);
}
