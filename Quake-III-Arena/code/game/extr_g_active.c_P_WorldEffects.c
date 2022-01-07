
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_11__ {int waterlevel; int health; int damage; scalar_t__ pain_debounce_time; int watertype; TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_12__ {scalar_t__ time; } ;
struct TYPE_9__ {scalar_t__* powerups; } ;
struct TYPE_10__ {scalar_t__ airOutTime; TYPE_1__ ps; scalar_t__ noclip; } ;


 int CHAN_VOICE ;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int DAMAGE_NO_ARMOR ;
 int EV_POWERUP_BATTLESUIT ;
 int G_AddEvent (TYPE_3__*,int ,int ) ;
 int G_Damage (TYPE_3__*,int *,int *,int *,int *,int,int ,int ) ;
 int G_Sound (TYPE_3__*,int ,int ) ;
 int G_SoundIndex (char*) ;
 int MOD_LAVA ;
 int MOD_SLIME ;
 int MOD_WATER ;
 size_t PW_BATTLESUIT ;
 TYPE_4__ level ;
 int rand () ;

void P_WorldEffects( gentity_t *ent ) {
 qboolean envirosuit;
 int waterlevel;

 if ( ent->client->noclip ) {
  ent->client->airOutTime = level.time + 12000;
  return;
 }

 waterlevel = ent->waterlevel;

 envirosuit = ent->client->ps.powerups[PW_BATTLESUIT] > level.time;




 if ( waterlevel == 3 ) {

  if ( envirosuit ) {
   ent->client->airOutTime = level.time + 10000;
  }


  if ( ent->client->airOutTime < level.time) {

   ent->client->airOutTime += 1000;
   if ( ent->health > 0 ) {

    ent->damage += 2;
    if (ent->damage > 15)
     ent->damage = 15;


    if (ent->health <= ent->damage) {
     G_Sound(ent, CHAN_VOICE, G_SoundIndex("*drown.wav"));
    } else if (rand()&1) {
     G_Sound(ent, CHAN_VOICE, G_SoundIndex("sound/player/gurp1.wav"));
    } else {
     G_Sound(ent, CHAN_VOICE, G_SoundIndex("sound/player/gurp2.wav"));
    }


    ent->pain_debounce_time = level.time + 200;

    G_Damage (ent, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     ent->damage, DAMAGE_NO_ARMOR, MOD_WATER);
   }
  }
 } else {
  ent->client->airOutTime = level.time + 12000;
  ent->damage = 2;
 }




 if (waterlevel &&
  (ent->watertype&(CONTENTS_LAVA|CONTENTS_SLIME)) ) {
  if (ent->health > 0
   && ent->pain_debounce_time <= level.time ) {

   if ( envirosuit ) {
    G_AddEvent( ent, EV_POWERUP_BATTLESUIT, 0 );
   } else {
    if (ent->watertype & CONTENTS_LAVA) {
     G_Damage (ent, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      30*waterlevel, 0, MOD_LAVA);
    }

    if (ent->watertype & CONTENTS_SLIME) {
     G_Damage (ent, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      10*waterlevel, 0, MOD_SLIME);
    }
   }
  }
 }
}
