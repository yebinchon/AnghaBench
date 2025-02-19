
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int IP_FW_TCPF_ACK_COMPAT ;
 int IP_FW_TCPF_FIN_COMPAT ;
 int IP_FW_TCPF_PSH_COMPAT ;
 int IP_FW_TCPF_RST_COMPAT ;
 int IP_FW_TCPF_SYN_COMPAT ;
 int IP_FW_TCPF_URG_COMPAT ;
 int TH_ACK ;
 int TH_FIN ;
 int TH_PUSH ;
 int TH_RST ;
 int TH_SYN ;
 int TH_URG ;

__attribute__((used)) static u_int32_t
fill_compat_tcpflags(u_int32_t flags) {
 u_int32_t flags_compat = 0;

 if (flags & TH_FIN)
  flags_compat |= IP_FW_TCPF_FIN_COMPAT;
 if (flags & TH_SYN)
  flags_compat |= IP_FW_TCPF_SYN_COMPAT;
 if (flags & TH_RST)
  flags_compat |= IP_FW_TCPF_RST_COMPAT;
 if (flags & TH_PUSH)
  flags_compat |= IP_FW_TCPF_PSH_COMPAT;
 if (flags & TH_ACK)
  flags_compat |= IP_FW_TCPF_ACK_COMPAT;
 if (flags & TH_URG)
  flags_compat |= IP_FW_TCPF_URG_COMPAT;

 return flags_compat;
}
