
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sin_addr; int sin_port; int sin_family; int sin_len; } ;
struct ip_fw_compat_64 {int fw_flg; int fw_reject_code_compat; TYPE_1__ fw_fwd_ip_compat; int fw_divert_port_compat; int fw_skipto_rule_compat; } ;
struct ip_fw_64 {int cmd_len; int act_ofs; } ;
struct TYPE_8__ {int sin_addr; int sin_port; int sin_family; int sin_len; } ;
struct TYPE_9__ {TYPE_2__ sa; } ;
typedef TYPE_3__ ipfw_insn_sa ;
struct TYPE_10__ {int opcode; int arg1; } ;
typedef TYPE_4__ ipfw_insn ;


 TYPE_4__* ACTION_PTR (struct ip_fw_64*) ;
 scalar_t__ F_LEN (TYPE_4__*) ;
 int IP_FW_F_ACCEPT_COMPAT ;
 int IP_FW_F_CHECK_S_COMPAT ;
 int IP_FW_F_COUNT_COMPAT ;
 int IP_FW_F_DENY_COMPAT ;
 int IP_FW_F_DIVERT_COMPAT ;
 int IP_FW_F_FWD_COMPAT ;
 int IP_FW_F_PIPE_COMPAT ;
 int IP_FW_F_QUEUE_COMPAT ;
 int IP_FW_F_REJECT_COMPAT ;
 int IP_FW_F_SKIPTO_COMPAT ;
 int IP_FW_F_TEE_COMPAT ;
__attribute__((used)) static void
ipfw_map_from_actions_64(struct ip_fw_64 *curr_rule, struct ip_fw_compat_64 *compat_rule)
{
 int l;
 ipfw_insn *cmd;
 for (l = curr_rule->cmd_len - curr_rule->act_ofs, cmd = ACTION_PTR(curr_rule);
   l > 0 ;
   l -= F_LEN(cmd), cmd += F_LEN(cmd)) {
  switch (cmd->opcode) {
   case 138:
    compat_rule->fw_flg |= IP_FW_F_ACCEPT_COMPAT;
    break;
   case 136:
    compat_rule->fw_flg |= IP_FW_F_COUNT_COMPAT;
    break;
   case 132:
    compat_rule->fw_flg |= IP_FW_F_PIPE_COMPAT;
    compat_rule->fw_divert_port_compat = cmd->arg1;
    break;
   case 131:
    compat_rule->fw_flg |= IP_FW_F_QUEUE_COMPAT;
    compat_rule->fw_divert_port_compat = cmd->arg1;
    break;
   case 129:
    compat_rule->fw_flg |= IP_FW_F_SKIPTO_COMPAT;
    compat_rule->fw_skipto_rule_compat = cmd->arg1;
    break;
   case 134:
    compat_rule->fw_flg |= IP_FW_F_DIVERT_COMPAT;
    compat_rule->fw_divert_port_compat = cmd->arg1;
    break;
   case 128:
    compat_rule->fw_flg |= IP_FW_F_TEE_COMPAT;
    compat_rule->fw_divert_port_compat = cmd->arg1;
    break;
   case 133:
   {
    ipfw_insn_sa *p = (ipfw_insn_sa *)cmd;

    compat_rule->fw_flg |= IP_FW_F_FWD_COMPAT;
    compat_rule->fw_fwd_ip_compat.sin_len = p->sa.sin_len;
    compat_rule->fw_fwd_ip_compat.sin_family = p->sa.sin_family;
    compat_rule->fw_fwd_ip_compat.sin_port = p->sa.sin_port;
    compat_rule->fw_fwd_ip_compat.sin_addr = p->sa.sin_addr;

    break;
   }
   case 135:
    compat_rule->fw_flg |= IP_FW_F_DENY_COMPAT;
    break;
   case 130:
    compat_rule->fw_flg |= IP_FW_F_REJECT_COMPAT;
    compat_rule->fw_reject_code_compat = cmd->arg1;
    break;
   case 137:
    compat_rule->fw_flg |= IP_FW_F_CHECK_S_COMPAT;
    break;
   default:
    break;
  }
 }
}
