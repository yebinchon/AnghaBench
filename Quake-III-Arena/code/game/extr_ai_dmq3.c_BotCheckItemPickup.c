
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* inventory; int teamtaskpreference; scalar_t__ ltgtype; scalar_t__ redflagstatus; scalar_t__ blueflagstatus; scalar_t__ neutralflagstatus; int teamleader; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_7__ {int integer; } ;


 scalar_t__ BotTeamLeader (TYPE_1__*) ;
 int BotVoiceChat (TYPE_1__*,int,int ) ;
 int ClientFromName (int ) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_TEAM ;
 size_t INVENTORY_AMMOREGEN ;
 size_t INVENTORY_DOUBLER ;
 size_t INVENTORY_GUARD ;
 size_t INVENTORY_INVULNERABILITY ;
 size_t INVENTORY_KAMIKAZE ;
 size_t INVENTORY_SCOUT ;
 scalar_t__ LTG_ATTACKENEMYBASE ;
 scalar_t__ LTG_DEFENDKEYAREA ;
 scalar_t__ LTG_GETFLAG ;
 scalar_t__ LTG_HARVEST ;
 int TEAMTP_ATTACKER ;
 int TEAMTP_DEFENDER ;
 int VOICECHAT_WANTONDEFENSE ;
 int VOICECHAT_WANTONOFFENSE ;
 TYPE_2__ g_spSkill ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;

void BotCheckItemPickup(bot_state_t *bs, int *oldinventory) {
}
