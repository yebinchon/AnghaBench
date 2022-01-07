
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {float formation_dist; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_9__ {int subtype; } ;
typedef TYPE_2__ bot_match_t ;


 int BotAddressedToBot (TYPE_1__*,TYPE_2__*) ;
 int MAX_MESSAGE_SIZE ;
 int NUMBER ;
 int ST_FEET ;
 int TeamPlayIsOn () ;
 int atof (char*) ;
 int trap_BotMatchVariable (TYPE_2__*,int ,char*,int) ;

void BotMatch_FormationSpace(bot_state_t *bs, bot_match_t *match) {
 char buf[MAX_MESSAGE_SIZE];
 float space;

 if (!TeamPlayIsOn()) return;

 if (!BotAddressedToBot(bs, match)) return;

 trap_BotMatchVariable(match, NUMBER, buf, MAX_MESSAGE_SIZE);

 if (match->subtype & ST_FEET) space = 0.3048 * 32 * atof(buf);

 else space = 32 * atof(buf);

 if (space < 48 || space > 500) space = 100;
 bs->formation_dist = space;
}
