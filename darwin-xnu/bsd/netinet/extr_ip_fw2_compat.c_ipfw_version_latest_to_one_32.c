
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_compat_32 {int timestamp; int fw_bcnt; int fw_pcnt; int fw_number; int context; int version; } ;
struct ip_fw_32 {int timestamp; int bcnt; int pcnt; int rulenum; int context; } ;


 int CAST_DOWN_EXPLICIT (int ,int ) ;
 int IP_FW_VERSION_1 ;
 int bzero (struct ip_fw_compat_32*,int) ;
 int ipfw_map_from_actions_32 (struct ip_fw_32*,struct ip_fw_compat_32*) ;
 int ipfw_map_from_cmds_32 (struct ip_fw_32*,struct ip_fw_compat_32*) ;
 int ipfw_print_vers1_struct_32 (struct ip_fw_compat_32*) ;
 int user32_addr_t ;

__attribute__((used)) static void
ipfw_version_latest_to_one_32(struct ip_fw_32 *curr_rule, struct ip_fw_compat_32 *rule_vers1)
{
 if (!rule_vers1)
  return;

 bzero(rule_vers1, sizeof(struct ip_fw_compat_32));

 rule_vers1->version = IP_FW_VERSION_1;
 rule_vers1->context = CAST_DOWN_EXPLICIT(user32_addr_t,curr_rule->context);
 rule_vers1->fw_number = curr_rule->rulenum;
 rule_vers1->fw_pcnt = curr_rule->pcnt;
 rule_vers1->fw_bcnt = curr_rule->bcnt;
 rule_vers1->timestamp = curr_rule->timestamp;


 ipfw_map_from_actions_32(curr_rule, rule_vers1);


 ipfw_map_from_cmds_32(curr_rule, rule_vers1);




}
