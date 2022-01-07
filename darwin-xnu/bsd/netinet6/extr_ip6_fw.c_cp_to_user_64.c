
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fu_divert_port; } ;
struct ip6_fw_64 {int fw_nports; int fw_prot; TYPE_1__ fw_un; int timestamp; int fw_out_if; int fw_in_if; int fw_icmp6types; int fw_tcpnf; int fw_tcpf; int fw_ip6nopt; int fw_ip6opt; int fw_pts; int fw_ipflg; int fw_flg; int fw_number; int fw_dmsk; int fw_smsk; int fw_dst; int fw_src; int fw_bcnt; int fw_pcnt; int context; int version; } ;
struct TYPE_4__ {int fu_divert_port; } ;
struct ip6_fw {int fw_nports; int fw_prot; TYPE_2__ fw_un; int timestamp; int fw_out_if; int fw_in_if; int fw_icmp6types; int fw_tcpnf; int fw_tcpf; int fw_ip6nopt; int fw_ip6opt; int fw_pts; int fw_ipflg; int fw_flg; int fw_number; int fw_dmsk; int fw_smsk; int fw_dst; int fw_src; int fw_bcnt; int fw_pcnt; int context; int version; } ;


 int CAST_USER_ADDR_T (int ) ;
 int IPV6_FW_MAX_PORTS ;
 int bcopy (int ,int ,int) ;

__attribute__((used)) static void
cp_to_user_64( struct ip6_fw_64 *userrule_64, struct ip6_fw *rule)
{
 userrule_64->version = rule->version;
 userrule_64->context = CAST_USER_ADDR_T(rule->context);
 userrule_64->fw_pcnt = rule->fw_pcnt;
 userrule_64->fw_bcnt = rule->fw_bcnt;
 userrule_64->fw_src = rule->fw_src;
 userrule_64->fw_dst = rule->fw_dst;
 userrule_64->fw_smsk = rule->fw_smsk;
 userrule_64->fw_dmsk = rule->fw_dmsk;
 userrule_64->fw_number = rule->fw_number;
 userrule_64->fw_flg = rule->fw_flg;
 userrule_64->fw_ipflg = rule->fw_ipflg;
 bcopy( rule->fw_pts, userrule_64->fw_pts, IPV6_FW_MAX_PORTS);
 userrule_64->fw_ip6opt= rule->fw_ip6opt;
 userrule_64->fw_ip6nopt = rule->fw_ip6nopt;
 userrule_64->fw_tcpf = rule->fw_tcpf;
 userrule_64->fw_tcpnf = rule->fw_tcpnf;
 bcopy( rule->fw_icmp6types, userrule_64->fw_icmp6types, sizeof(userrule_64->fw_icmp6types));
 userrule_64->fw_in_if = rule->fw_in_if;
 userrule_64->fw_out_if = rule->fw_out_if;
 userrule_64->timestamp = rule->timestamp;
 userrule_64->fw_un.fu_divert_port = rule->fw_un.fu_divert_port;
 userrule_64->fw_prot = rule->fw_prot;
 userrule_64->fw_nports = rule->fw_nports;
}
