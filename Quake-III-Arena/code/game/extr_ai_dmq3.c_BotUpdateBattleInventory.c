
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_5__ {int* inventory; int origin; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_6__ {int origin; } ;
typedef TYPE_2__ aas_entityinfo_t ;


 int BotEntityInfo (int,TYPE_2__*) ;
 size_t ENEMY_HEIGHT ;
 size_t ENEMY_HORIZONTAL_DIST ;
 scalar_t__ VectorLength (scalar_t__*) ;
 int VectorSubtract (int ,int ,scalar_t__*) ;

void BotUpdateBattleInventory(bot_state_t *bs, int enemy) {
 vec3_t dir;
 aas_entityinfo_t entinfo;

 BotEntityInfo(enemy, &entinfo);
 VectorSubtract(entinfo.origin, bs->origin, dir);
 bs->inventory[ENEMY_HEIGHT] = (int) dir[2];
 dir[2] = 0;
 bs->inventory[ENEMY_HORIZONTAL_DIST] = (int) VectorLength(dir);

}
