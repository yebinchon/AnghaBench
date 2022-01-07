
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {int dummy; } ;
struct bstp_port {scalar_t__ bp_infois; TYPE_1__* bp_ifp; } ;
struct TYPE_2__ {int if_xname; } ;


 scalar_t__ BSTP_INFO_AGED ;
 scalar_t__ BSTP_INFO_RECEIVED ;
 int DPRINTF (char*,int ) ;
 int bstp_assign_roles (struct bstp_state*) ;

__attribute__((used)) static void
bstp_message_age_expiry(struct bstp_state *bs, struct bstp_port *bp)
{
 if (bp->bp_infois == BSTP_INFO_RECEIVED) {
  bp->bp_infois = BSTP_INFO_AGED;
  bstp_assign_roles(bs);
  DPRINTF("aged info on %s\n", bp->bp_ifp->if_xname);
 }
}
