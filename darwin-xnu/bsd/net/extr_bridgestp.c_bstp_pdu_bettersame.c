
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cu_pv; } ;
struct bstp_port {int bp_infois; int bp_desg_pv; int bp_port_pv; TYPE_1__ bp_msg_cu; } ;


 int BSTP_INFO_MINE ;
 int BSTP_INFO_RECEIVED ;
 scalar_t__ INFO_SAME ;
 scalar_t__ bstp_info_cmp (int *,int *) ;

__attribute__((used)) static int
bstp_pdu_bettersame(struct bstp_port *bp, int newinfo)
{
 if (newinfo == BSTP_INFO_RECEIVED &&
     bp->bp_infois == BSTP_INFO_RECEIVED &&
     bstp_info_cmp(&bp->bp_port_pv, &bp->bp_msg_cu.cu_pv) >= INFO_SAME)
  return (1);

 if (newinfo == BSTP_INFO_MINE &&
     bp->bp_infois == BSTP_INFO_MINE &&
     bstp_info_cmp(&bp->bp_port_pv, &bp->bp_desg_pv) >= INFO_SAME)
  return (1);

 return (0);
}
