
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


struct TYPE_16__ {int* s6_addr32; } ;
struct TYPE_15__ {int* s6_addr32; } ;
struct TYPE_14__ {int* s6_addr32; } ;
struct TYPE_13__ {int* s6_addr32; } ;
struct TYPE_11__ {int * name; } ;
struct TYPE_12__ {TYPE_3__ fu_via_if; } ;
struct TYPE_9__ {int * name; } ;
struct TYPE_10__ {TYPE_1__ fu_via_if; } ;
struct ip6_fw {int fw_flg; scalar_t__ fw_prot; scalar_t__ fw_tcpf; scalar_t__ fw_tcpnf; int fw_reject_code; int fw_divert_port; scalar_t__ fw_nports; TYPE_8__ fw_dmsk; TYPE_7__ fw_dst; TYPE_6__ fw_smsk; TYPE_5__ fw_src; TYPE_4__ fw_out_if; TYPE_2__ fw_in_if; } ;


 int IF6_FW_F_VIAHACK ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;

 int IPV6_FW_F_COMMAND ;



 int IPV6_FW_F_DRNG ;
 int IPV6_FW_F_FRAG ;
 int IPV6_FW_F_IIFNAME ;
 int IPV6_FW_F_IN ;
 int IPV6_FW_F_MASK ;
 int IPV6_FW_F_OIFACE ;
 int IPV6_FW_F_OIFNAME ;
 int IPV6_FW_F_OUT ;


 int IPV6_FW_F_SRNG ;

 int IPV6_FW_GETNDSTP (struct ip6_fw*) ;
 int IPV6_FW_GETNSRCP (struct ip6_fw*) ;
 int IPV6_FW_MAX_PORTS ;
 int IPV6_FW_REJECT_RST ;
 int dprintf (char*) ;
 int err_prefix ;

__attribute__((used)) static struct ip6_fw *
check_ip6fw_struct(struct ip6_fw *frwl)
{

 if ((frwl->fw_flg & ~IPV6_FW_F_MASK) != 0) {
  dprintf(("%s undefined flag bits set (flags=%x)\n",
      err_prefix, frwl->fw_flg));
  return (((void*)0));
 }

 if (!(frwl->fw_flg & (IPV6_FW_F_IN | IPV6_FW_F_OUT))) {
  dprintf(("%s neither in nor out\n", err_prefix));
  return (((void*)0));
 }

 if (((frwl->fw_flg & IPV6_FW_F_IIFNAME)
       && !*frwl->fw_in_if.fu_via_if.name)
     || ((frwl->fw_flg & IPV6_FW_F_OIFNAME)
       && !*frwl->fw_out_if.fu_via_if.name)) {
  dprintf(("%s empty interface name\n", err_prefix));
  return (((void*)0));
 }

 if ((frwl->fw_flg & IF6_FW_F_VIAHACK) == IF6_FW_F_VIAHACK) {
  ;
 } else if ((frwl->fw_flg & IPV6_FW_F_IN)
     && (frwl->fw_flg & IPV6_FW_F_OIFACE)) {
  dprintf(("%s outgoing interface check on incoming\n",
      err_prefix));
  return (((void*)0));
 }

 if ((frwl->fw_flg & IPV6_FW_F_SRNG) && IPV6_FW_GETNSRCP(frwl) < 2) {
  dprintf(("%s src range set but n_src_p=%d\n",
      err_prefix, IPV6_FW_GETNSRCP(frwl)));
  return (((void*)0));
 }
 if ((frwl->fw_flg & IPV6_FW_F_DRNG) && IPV6_FW_GETNDSTP(frwl) < 2) {
  dprintf(("%s dst range set but n_dst_p=%d\n",
      err_prefix, IPV6_FW_GETNDSTP(frwl)));
  return (((void*)0));
 }
 if (IPV6_FW_GETNSRCP(frwl) + IPV6_FW_GETNDSTP(frwl) > IPV6_FW_MAX_PORTS) {
  dprintf(("%s too many ports (%d+%d)\n",
      err_prefix, IPV6_FW_GETNSRCP(frwl), IPV6_FW_GETNDSTP(frwl)));
  return (((void*)0));
 }



 if ((frwl->fw_prot != IPPROTO_TCP) &&
     (frwl->fw_prot != IPPROTO_UDP) &&
     (IPV6_FW_GETNSRCP(frwl) || IPV6_FW_GETNDSTP(frwl))) {
  dprintf(("%s port(s) specified for non TCP/UDP rule\n",
      err_prefix));
  return(((void*)0));
 }






 if ((frwl->fw_src.s6_addr32[0] & (~frwl->fw_smsk.s6_addr32[0])) ||
  (frwl->fw_src.s6_addr32[1] & (~frwl->fw_smsk.s6_addr32[1])) ||
  (frwl->fw_src.s6_addr32[2] & (~frwl->fw_smsk.s6_addr32[2])) ||
  (frwl->fw_src.s6_addr32[3] & (~frwl->fw_smsk.s6_addr32[3])) ||
  (frwl->fw_dst.s6_addr32[0] & (~frwl->fw_dmsk.s6_addr32[0])) ||
  (frwl->fw_dst.s6_addr32[1] & (~frwl->fw_dmsk.s6_addr32[1])) ||
  (frwl->fw_dst.s6_addr32[2] & (~frwl->fw_dmsk.s6_addr32[2])) ||
  (frwl->fw_dst.s6_addr32[3] & (~frwl->fw_dmsk.s6_addr32[3]))) {
  dprintf(("%s rule never matches\n", err_prefix));
  return(((void*)0));
 }

 if ((frwl->fw_flg & IPV6_FW_F_FRAG) &&
  (frwl->fw_prot == IPPROTO_UDP || frwl->fw_prot == IPPROTO_TCP)) {
  if (frwl->fw_nports) {
   dprintf(("%s cannot mix 'frag' and ports\n", err_prefix));
   return(((void*)0));
  }
  if (frwl->fw_prot == IPPROTO_TCP &&
   frwl->fw_tcpf != frwl->fw_tcpnf) {
   dprintf(("%s cannot mix 'frag' with TCP flags\n", err_prefix));
   return(((void*)0));
  }
 }


 switch (frwl->fw_flg & IPV6_FW_F_COMMAND)
 {
 case 130:
  if (frwl->fw_reject_code >= 0x100
      && !(frwl->fw_prot == IPPROTO_TCP
        && frwl->fw_reject_code == IPV6_FW_REJECT_RST)) {
   dprintf(("%s unknown reject code\n", err_prefix));
   return(((void*)0));
  }
  break;
 case 131:
 case 128:
  if (frwl->fw_divert_port == 0) {
   dprintf(("%s can't divert to port 0\n", err_prefix));
   return (((void*)0));
  }
  break;
 case 132:
 case 134:
 case 133:
 case 129:
  break;
 default:
  dprintf(("%s invalid command\n", err_prefix));
  return(((void*)0));
 }

 return frwl;
}
