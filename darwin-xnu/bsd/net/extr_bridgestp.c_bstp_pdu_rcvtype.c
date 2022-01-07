
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_port {int bp_port_pv; int bp_port_htime; int bp_port_fdelay; int bp_port_max_age; int bp_port_msg_age; } ;
struct bstp_config_unit {int cu_role; int cu_pv; int cu_hello_time; int cu_forward_delay; int cu_max_age; int cu_message_age; } ;


 int BSTP_PDU_INFERIOR ;
 int BSTP_PDU_INFERIORALT ;
 int BSTP_PDU_OTHER ;
 int BSTP_PDU_REPEATED ;
 int BSTP_PDU_SUPERIOR ;




 int INFO_SAME ;
 int bstp_info_cmp (int *,int *) ;
 int bstp_info_superior (int *,int *) ;

__attribute__((used)) static int
bstp_pdu_rcvtype(struct bstp_port *bp, struct bstp_config_unit *cu)
{
 int type;


 type = BSTP_PDU_OTHER;

 switch (cu->cu_role) {
 case 129:
  if (bstp_info_superior(&bp->bp_port_pv, &cu->cu_pv))

   type = BSTP_PDU_SUPERIOR;
  else if (bstp_info_cmp(&bp->bp_port_pv, &cu->cu_pv) ==
      INFO_SAME) {
   if (bp->bp_port_msg_age != cu->cu_message_age ||
       bp->bp_port_max_age != cu->cu_max_age ||
       bp->bp_port_fdelay != cu->cu_forward_delay ||
       bp->bp_port_htime != cu->cu_hello_time)

    type = BSTP_PDU_SUPERIOR;
   else

    type = BSTP_PDU_REPEATED;
  } else

   type = BSTP_PDU_INFERIOR;

  break;

 case 128:
 case 131:
 case 130:
  if (bstp_info_cmp(&bp->bp_port_pv, &cu->cu_pv) <= INFO_SAME)




   type = BSTP_PDU_INFERIORALT;
  break;
 }

 return (type);
}
