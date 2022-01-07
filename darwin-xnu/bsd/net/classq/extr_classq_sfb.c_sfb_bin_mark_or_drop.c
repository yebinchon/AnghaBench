
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfbbinstats {int bytes; scalar_t__ pkts; } ;
struct sfb {int sfb_fc_threshold; scalar_t__ sfb_allocation; scalar_t__ sfb_drop_thresh; } ;


 scalar_t__ SFB_IS_DELAYHIGH (struct sfb*) ;
 scalar_t__ SFB_QUEUE_DELAYBASED (struct sfb*) ;

__attribute__((used)) static int
sfb_bin_mark_or_drop(struct sfb *sp, struct sfbbinstats *bin)
{
 int ret = 0;
 if (SFB_QUEUE_DELAYBASED(sp)) {




  if (SFB_IS_DELAYHIGH(sp) &&
      bin->bytes >= (sp->sfb_fc_threshold << 1))
   ret = 1;
 } else {
  if (bin->pkts >= sp->sfb_allocation &&
      bin->pkts >= sp->sfb_drop_thresh)
   ret = 1;
 }
 return (ret);
}
