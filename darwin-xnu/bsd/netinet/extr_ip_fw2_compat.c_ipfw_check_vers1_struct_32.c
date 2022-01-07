
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int s_addr; } ;
struct TYPE_15__ {int s_addr; } ;
struct TYPE_14__ {int s_addr; } ;
struct TYPE_13__ {int s_addr; } ;
struct TYPE_11__ {int * name; } ;
struct TYPE_12__ {TYPE_3__ fu_via_if_compat; } ;
struct TYPE_9__ {int * name; } ;
struct TYPE_10__ {TYPE_1__ fu_via_if_compat; } ;
struct ip_fw_compat_32 {int fw_flg; scalar_t__ fw_prot; scalar_t__ fw_tcpf; scalar_t__ fw_tcpnf; int fw_reject_code_compat; int fw_divert_port_compat; scalar_t__ fw_nports; TYPE_8__ fw_dmsk; TYPE_7__ fw_dst; TYPE_6__ fw_smsk; TYPE_5__ fw_src; TYPE_4__ fw_out_if; TYPE_2__ fw_in_if; } ;


 int EINVAL ;
 int IF_FW_F_VIAHACK_COMPAT ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;

 int IP_FW_F_CHECK_S_COMPAT ;
 int IP_FW_F_COMMAND_COMPAT ;



 int IP_FW_F_DRNG_COMPAT ;
 int IP_FW_F_FRAG_COMPAT ;

 int IP_FW_F_IIFNAME_COMPAT ;
 int IP_FW_F_IN_COMPAT ;
 int IP_FW_F_MASK_COMPAT ;
 int IP_FW_F_OIFACE_COMPAT ;
 int IP_FW_F_OIFNAME_COMPAT ;
 int IP_FW_F_OUT_COMPAT ;




 int IP_FW_F_SRNG_COMPAT ;


 int IP_FW_GETNDSTP_COMPAT (struct ip_fw_compat_32*) ;
 int IP_FW_GETNSRCP_COMPAT (struct ip_fw_compat_32*) ;
 int IP_FW_MAX_PORTS_COMPAT ;
 int IP_FW_REJECT_RST_COMPAT ;

__attribute__((used)) static int
ipfw_check_vers1_struct_32(struct ip_fw_compat_32 *frwl)
{

 if ((frwl->fw_flg & ~IP_FW_F_MASK_COMPAT) != 0) {




  return (EINVAL);
 }
 if (frwl->fw_flg == IP_FW_F_CHECK_S_COMPAT) {

  return 0 ;
 }

 if (!(frwl->fw_flg & (IP_FW_F_IN_COMPAT | IP_FW_F_OUT_COMPAT))) {



  return (EINVAL);
 }

 if (((frwl->fw_flg & IP_FW_F_IIFNAME_COMPAT)
       && !*frwl->fw_in_if.fu_via_if_compat.name)
     || ((frwl->fw_flg & IP_FW_F_OIFNAME_COMPAT)
       && !*frwl->fw_out_if.fu_via_if_compat.name)) {



  return (EINVAL);
 }

 if ((frwl->fw_flg & IF_FW_F_VIAHACK_COMPAT) == IF_FW_F_VIAHACK_COMPAT) {
  ;
 } else if ((frwl->fw_flg & IP_FW_F_IN_COMPAT)
     && (frwl->fw_flg & IP_FW_F_OIFACE_COMPAT)) {




  return (EINVAL);
 }

 if ((frwl->fw_flg & IP_FW_F_SRNG_COMPAT) && IP_FW_GETNSRCP_COMPAT(frwl) < 2) {




  return (EINVAL);
 }
 if ((frwl->fw_flg & IP_FW_F_DRNG_COMPAT) && IP_FW_GETNDSTP_COMPAT(frwl) < 2) {




  return (EINVAL);
 }
 if (IP_FW_GETNSRCP_COMPAT(frwl) + IP_FW_GETNDSTP_COMPAT(frwl) > IP_FW_MAX_PORTS_COMPAT) {




  return (EINVAL);
 }



 if ((frwl->fw_prot != IPPROTO_TCP) &&
     (frwl->fw_prot != IPPROTO_UDP) &&
     (IP_FW_GETNSRCP_COMPAT(frwl) || IP_FW_GETNDSTP_COMPAT(frwl))) {




  return (EINVAL);
 }






 if ((frwl->fw_src.s_addr & (~frwl->fw_smsk.s_addr)) ||
  (frwl->fw_dst.s_addr & (~frwl->fw_dmsk.s_addr))) {



  return (EINVAL);
 }

 if ((frwl->fw_flg & IP_FW_F_FRAG_COMPAT) &&
  (frwl->fw_prot == IPPROTO_UDP || frwl->fw_prot == IPPROTO_TCP)) {
  if (frwl->fw_nports) {



   return (EINVAL);
  }
  if (frwl->fw_prot == IPPROTO_TCP &&
   frwl->fw_tcpf != frwl->fw_tcpnf) {



   return (EINVAL);
  }
 }


 switch (frwl->fw_flg & IP_FW_F_COMMAND_COMPAT)
 {
 case 131:
  if (frwl->fw_reject_code_compat >= 0x100
      && !(frwl->fw_prot == IPPROTO_TCP
        && frwl->fw_reject_code_compat == IP_FW_REJECT_RST_COMPAT)) {



   return (EINVAL);
  }
  break;
 case 135:
 case 129:
 case 133:
 case 132:
  if (frwl->fw_divert_port_compat == 0) {



   return (EINVAL);
  }
  break;
 case 136:
 case 138:
 case 137:
 case 130:
 case 134:
 case 128:
  break;
 default:



  return (EINVAL);
 }

 return 0;
}
