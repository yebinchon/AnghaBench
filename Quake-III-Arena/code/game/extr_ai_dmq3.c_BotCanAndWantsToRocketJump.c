
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* inventory; int character; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_5__ {int integer; } ;


 int CHARACTERISTIC_WEAPONJUMPING ;
 size_t INVENTORY_ARMOR ;
 size_t INVENTORY_HEALTH ;
 size_t INVENTORY_QUAD ;
 size_t INVENTORY_ROCKETLAUNCHER ;
 size_t INVENTORY_ROCKETS ;
 TYPE_2__ bot_rocketjump ;
 int qfalse ;
 int qtrue ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;

int BotCanAndWantsToRocketJump(bot_state_t *bs) {
 float rocketjumper;


 if (!bot_rocketjump.integer) return qfalse;

 if (bs->inventory[INVENTORY_ROCKETLAUNCHER] <= 0) return qfalse;

 if (bs->inventory[INVENTORY_ROCKETS] < 3) return qfalse;

 if (bs->inventory[INVENTORY_QUAD]) return qfalse;

 if (bs->inventory[INVENTORY_HEALTH] < 60) return qfalse;

 if (bs->inventory[INVENTORY_HEALTH] < 90) {

  if (bs->inventory[INVENTORY_ARMOR] < 40) return qfalse;
 }
 rocketjumper = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_WEAPONJUMPING, 0, 1);
 if (rocketjumper < 0.5) return qfalse;
 return qtrue;
}
