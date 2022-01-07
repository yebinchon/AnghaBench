
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fu_divert_port; } ;
struct ip6_fw_32 {int fw_nports; int fw_prot; TYPE_1__ fw_un; int timestamp; int fw_out_if; int fw_in_if; int fw_icmp6types; int fw_tcpnf; int fw_tcpf; int fw_ip6nopt; int fw_ip6opt; int fw_pts; int fw_ipflg; int fw_flg; int fw_number; int fw_dmsk; int fw_smsk; int fw_dst; int fw_src; int fw_bcnt; int fw_pcnt; int context; int version; } ;
struct TYPE_4__ {int fu_divert_port; } ;
struct ip6_fw {int fw_nports; int fw_prot; TYPE_2__ fw_un; int timestamp; int fw_out_if; int fw_in_if; int fw_icmp6types; int fw_tcpnf; int fw_tcpf; int fw_ip6nopt; int fw_ip6opt; int fw_pts; int fw_ipflg; int fw_flg; int fw_number; int fw_dmsk; int fw_smsk; int fw_dst; int fw_src; int fw_bcnt; int fw_pcnt; int context; int version; } ;


 int CAST_DOWN_EXPLICIT (int ,int ) ;
 int IPV6_FW_MAX_PORTS ;
 int bcopy (int ,int ,int) ;
 int user32_addr_t ;

__attribute__((used)) static void
cp_to_user_32( struct ip6_fw_32 *userrule_32, struct ip6_fw *rule)
{
 userrule_32->version = rule->version;
 userrule_32->context = CAST_DOWN_EXPLICIT( user32_addr_t, rule->context);
 userrule_32->fw_pcnt = rule->fw_pcnt;
 userrule_32->fw_bcnt = rule->fw_bcnt;
 userrule_32->fw_src = rule->fw_src;
 userrule_32->fw_dst = rule->fw_dst;
 userrule_32->fw_smsk = rule->fw_smsk;
 userrule_32->fw_dmsk = rule->fw_dmsk;
 userrule_32->fw_number = rule->fw_number;
 userrule_32->fw_flg = rule->fw_flg;
 userrule_32->fw_ipflg = rule->fw_ipflg;
 bcopy( rule->fw_pts, userrule_32->fw_pts, IPV6_FW_MAX_PORTS);
 userrule_32->fw_ip6opt = rule->fw_ip6opt ;
 userrule_32->fw_ip6nopt = rule->fw_ip6nopt;
 userrule_32->fw_tcpf = rule->fw_tcpf;
 userrule_32->fw_tcpnf = rule->fw_tcpnf;
 bcopy( rule->fw_icmp6types, userrule_32->fw_icmp6types, sizeof(rule->fw_icmp6types));
 userrule_32->fw_in_if = rule->fw_in_if;
 userrule_32->fw_out_if = rule->fw_out_if;
 userrule_32->timestamp = rule->timestamp;
 userrule_32->fw_un.fu_divert_port = rule->fw_un.fu_divert_port;
 userrule_32->fw_prot = rule->fw_prot;
 userrule_32->fw_nports = rule->fw_nports;
}
