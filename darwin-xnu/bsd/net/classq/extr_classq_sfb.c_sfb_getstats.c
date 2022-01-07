
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rehash_intval; int pbox_time; int hold_time; } ;
struct sfb_stats {TYPE_3__* binstats; TYPE_1__ sfbstats; int update_interval; int flags; int delay_fcthreshold; int min_estdelay; int target_qdelay; int current; int clearpkts; int dropthresh; int allocation; } ;
struct sfb {TYPE_2__** sfb_bins; TYPE_1__ sfb_stats; int sfb_update_interval; int sfb_hinterval; int sfb_pboxtime; int sfb_holdtime; int sfb_flags; int sfb_fc_threshold; int sfb_min_qdelay; int sfb_target_qdelay; int sfb_current; int sfb_clearpkts; int sfb_drop_thresh; int sfb_allocation; } ;
struct TYPE_6__ {int stats; } ;
struct TYPE_5__ {int stats; } ;


 int _CASSERT (int) ;
 int bcopy (int *,int *,int) ;
 int net_timernsec (int *,int *) ;

void
sfb_getstats(struct sfb *sp, struct sfb_stats *sps)
{
 sps->allocation = sp->sfb_allocation;
 sps->dropthresh = sp->sfb_drop_thresh;
 sps->clearpkts = sp->sfb_clearpkts;
 sps->current = sp->sfb_current;
 sps->target_qdelay = sp->sfb_target_qdelay;
 sps->min_estdelay = sp->sfb_min_qdelay;
 sps->delay_fcthreshold = sp->sfb_fc_threshold;
 sps->flags = sp->sfb_flags;

 net_timernsec(&sp->sfb_holdtime, &sp->sfb_stats.hold_time);
 net_timernsec(&sp->sfb_pboxtime, &sp->sfb_stats.pbox_time);
 net_timernsec(&sp->sfb_hinterval, &sp->sfb_stats.rehash_intval);
 net_timernsec(&sp->sfb_update_interval, &sps->update_interval);
 *(&(sps->sfbstats)) = *(&(sp->sfb_stats));

 _CASSERT(sizeof ((*sp->sfb_bins)[0].stats) ==
     sizeof (sps->binstats[0].stats));

 bcopy(&(*sp->sfb_bins)[0].stats, &sps->binstats[0].stats,
     sizeof (sps->binstats[0].stats));
 bcopy(&(*sp->sfb_bins)[1].stats, &sps->binstats[1].stats,
     sizeof (sps->binstats[1].stats));
}
