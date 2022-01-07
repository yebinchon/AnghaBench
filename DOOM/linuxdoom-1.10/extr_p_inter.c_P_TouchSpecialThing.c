
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int health; int armorpoints; int armortype; int backpack; int* maxammo; int bonuscount; int itemcount; int message; int pendingweapon; int readyweapon; int * cards; TYPE_1__* mo; } ;
typedef TYPE_2__ player_t ;
struct TYPE_16__ {int z; int height; scalar_t__ health; int sprite; int flags; TYPE_2__* player; } ;
typedef TYPE_3__ mobj_t ;
typedef int fixed_t ;
struct TYPE_14__ {int health; } ;


 scalar_t__ BONUSADD ;
 int FRACUNIT ;
 int GOTARMBONUS ;
 int GOTARMOR ;
 int GOTBACKPACK ;
 int GOTBERSERK ;
 int GOTBFG9000 ;
 int GOTBLUECARD ;
 int GOTBLUESKUL ;
 int GOTCELL ;
 int GOTCELLBOX ;
 int GOTCHAINGUN ;
 int GOTCHAINSAW ;
 int GOTCLIP ;
 int GOTCLIPBOX ;
 int GOTHTHBONUS ;
 int GOTINVIS ;
 int GOTINVUL ;
 int GOTLAUNCHER ;
 int GOTMAP ;
 int GOTMEDIKIT ;
 int GOTMEDINEED ;
 int GOTMEGA ;
 int GOTMSPHERE ;
 int GOTPLASMA ;
 int GOTREDCARD ;
 int GOTREDSKULL ;
 int GOTROCKBOX ;
 int GOTROCKET ;
 int GOTSHELLBOX ;
 int GOTSHELLS ;
 int GOTSHOTGUN ;
 int GOTSHOTGUN2 ;
 int GOTSTIM ;
 int GOTSUIT ;
 int GOTSUPER ;
 int GOTVISOR ;
 int GOTYELWCARD ;
 int GOTYELWSKUL ;
 int I_Error (char*) ;
 int MF_COUNTITEM ;
 int MF_DROPPED ;
 int NUMAMMO ;
 int P_GiveAmmo (TYPE_2__*,int,int) ;
 int P_GiveArmor (TYPE_2__*,int) ;
 int P_GiveBody (TYPE_2__*,int) ;
 int P_GiveCard (TYPE_2__*,size_t) ;
 int P_GivePower (TYPE_2__*,int ) ;
 int P_GiveWeapon (TYPE_2__*,int ,int) ;
 int P_RemoveMobj (TYPE_3__*) ;
 int S_StartSound (int *,int) ;
 int am_cell ;
 int am_clip ;
 int am_misl ;
 int am_shell ;
 int commercial ;
 size_t consoleplayer ;
 int gamemode ;
 size_t it_bluecard ;
 size_t it_blueskull ;
 size_t it_redcard ;
 size_t it_redskull ;
 size_t it_yellowcard ;
 size_t it_yellowskull ;
 int netgame ;
 TYPE_2__* players ;
 int pw_allmap ;
 int pw_infrared ;
 int pw_invisibility ;
 int pw_invulnerability ;
 int pw_ironfeet ;
 int pw_strength ;
 int sfx_getpow ;
 int sfx_itemup ;
 int sfx_wpnup ;
 int wp_bfg ;
 int wp_chaingun ;
 int wp_chainsaw ;
 int wp_fist ;
 int wp_missile ;
 int wp_plasma ;
 int wp_shotgun ;
 int wp_supershotgun ;

void
P_TouchSpecialThing
( mobj_t* special,
  mobj_t* toucher )
{
    player_t* player;
    int i;
    fixed_t delta;
    int sound;

    delta = special->z - toucher->z;

    if (delta > toucher->height
 || delta < -8*FRACUNIT)
    {

 return;
    }


    sound = sfx_itemup;
    player = toucher->player;



    if (toucher->health <= 0)
 return;


    switch (special->sprite)
    {

      case 162:
 if (!P_GiveArmor (player, 1))
     return;
 player->message = GOTARMOR;
 break;

      case 161:
 if (!P_GiveArmor (player, 2))
     return;
 player->message = GOTMEGA;
 break;


      case 158:
 player->health++;
 if (player->health > 200)
     player->health = 200;
 player->mo->health = player->health;
 player->message = GOTHTHBONUS;
 break;

      case 157:
 player->armorpoints++;
 if (player->armorpoints > 200)
     player->armorpoints = 200;
 if (!player->armortype)
     player->armortype = 1;
 player->message = GOTARMBONUS;
 break;

      case 132:
 player->health += 100;
 if (player->health > 200)
     player->health = 200;
 player->mo->health = player->health;
 player->message = GOTSUPER;
 sound = sfx_getpow;
 break;

      case 147:
 if (gamemode != commercial)
     return;
 player->health = 200;
 player->mo->health = player->health;
 P_GiveArmor (player,2);
 player->message = GOTMSPHERE;
 sound = sfx_getpow;
 break;



      case 159:
 if (!player->cards[it_bluecard])
     player->message = GOTBLUECARD;
 P_GiveCard (player, it_bluecard);
 if (!netgame)
     break;
 return;

      case 129:
 if (!player->cards[it_yellowcard])
     player->message = GOTYELWCARD;
 P_GiveCard (player, it_yellowcard);
 if (!netgame)
     break;
 return;

      case 139:
 if (!player->cards[it_redcard])
     player->message = GOTREDCARD;
 P_GiveCard (player, it_redcard);
 if (!netgame)
     break;
 return;

      case 154:
 if (!player->cards[it_blueskull])
     player->message = GOTBLUESKUL;
 P_GiveCard (player, it_blueskull);
 if (!netgame)
     break;
 return;

      case 128:
 if (!player->cards[it_yellowskull])
     player->message = GOTYELWSKUL;
 P_GiveCard (player, it_yellowskull);
 if (!netgame)
     break;
 return;

      case 137:
 if (!player->cards[it_redskull])
     player->message = GOTREDSKULL;
 P_GiveCard (player, it_redskull);
 if (!netgame)
     break;
 return;


      case 131:
 if (!P_GiveBody (player, 10))
     return;
 player->message = GOTSTIM;
 break;

      case 148:
 if (!P_GiveBody (player, 25))
     return;

 if (player->health < 25)
     player->message = GOTMEDINEED;
 else
     player->message = GOTMEDIKIT;
 break;



      case 144:
 if (!P_GivePower (player, pw_invulnerability))
     return;
 player->message = GOTINVUL;
 sound = sfx_getpow;
 break;

      case 141:
 if (!P_GivePower (player, pw_strength))
     return;
 player->message = GOTBERSERK;
 if (player->readyweapon != wp_fist)
     player->pendingweapon = wp_fist;
 sound = sfx_getpow;
 break;

      case 145:
 if (!P_GivePower (player, pw_invisibility))
     return;
 player->message = GOTINVIS;
 sound = sfx_getpow;
 break;

      case 130:
 if (!P_GivePower (player, pw_ironfeet))
     return;
 player->message = GOTSUIT;
 sound = sfx_getpow;
 break;

      case 142:
 if (!P_GivePower (player, pw_allmap))
     return;
 player->message = GOTMAP;
 sound = sfx_getpow;
 break;

      case 140:
 if (!P_GivePower (player, pw_infrared))
     return;
 player->message = GOTVISOR;
 sound = sfx_getpow;
 break;


      case 151:
 if (special->flags & MF_DROPPED)
 {
     if (!P_GiveAmmo (player,am_clip,0))
  return;
 }
 else
 {
     if (!P_GiveAmmo (player,am_clip,1))
  return;
 }
 player->message = GOTCLIP;
 break;

      case 163:
 if (!P_GiveAmmo (player, am_clip,5))
     return;
 player->message = GOTCLIPBOX;
 break;

      case 138:
 if (!P_GiveAmmo (player, am_misl,1))
     return;
 player->message = GOTROCKET;
 break;

      case 155:
 if (!P_GiveAmmo (player, am_misl,5))
     return;
 player->message = GOTROCKBOX;
 break;

      case 153:
 if (!P_GiveAmmo (player, am_cell,1))
     return;
 player->message = GOTCELL;
 break;

      case 152:
 if (!P_GiveAmmo (player, am_cell,5))
     return;
 player->message = GOTCELLBOX;
 break;

      case 134:
 if (!P_GiveAmmo (player, am_shell,1))
     return;
 player->message = GOTSHELLS;
 break;

      case 136:
 if (!P_GiveAmmo (player, am_shell,5))
     return;
 player->message = GOTSHELLBOX;
 break;

      case 156:
 if (!player->backpack)
 {
     for (i=0 ; i<NUMAMMO ; i++)
  player->maxammo[i] *= 2;
     player->backpack = 1;
 }
 for (i=0 ; i<NUMAMMO ; i++)
     P_GiveAmmo (player, i, 1);
 player->message = GOTBACKPACK;
 break;


      case 160:
 if (!P_GiveWeapon (player, wp_bfg, 0) )
     return;
 player->message = GOTBFG9000;
 sound = sfx_wpnup;
 break;

      case 146:
 if (!P_GiveWeapon (player, wp_chaingun, special->flags&MF_DROPPED) )
     return;
 player->message = GOTCHAINGUN;
 sound = sfx_wpnup;
 break;

      case 150:
 if (!P_GiveWeapon (player, wp_chainsaw, 0) )
     return;
 player->message = GOTCHAINSAW;
 sound = sfx_wpnup;
 break;

      case 149:
 if (!P_GiveWeapon (player, wp_missile, 0) )
     return;
 player->message = GOTLAUNCHER;
 sound = sfx_wpnup;
 break;

      case 143:
 if (!P_GiveWeapon (player, wp_plasma, 0) )
     return;
 player->message = GOTPLASMA;
 sound = sfx_wpnup;
 break;

      case 133:
 if (!P_GiveWeapon (player, wp_shotgun, special->flags&MF_DROPPED ) )
     return;
 player->message = GOTSHOTGUN;
 sound = sfx_wpnup;
 break;

      case 135:
 if (!P_GiveWeapon (player, wp_supershotgun, special->flags&MF_DROPPED ) )
     return;
 player->message = GOTSHOTGUN2;
 sound = sfx_wpnup;
 break;

      default:
 I_Error ("P_SpecialThing: Unknown gettable thing");
    }

    if (special->flags & MF_COUNTITEM)
 player->itemcount++;
    P_RemoveMobj (special);
    player->bonuscount += BONUSADD;
    if (player == &players[consoleplayer])
 S_StartSound (((void*)0), sound);
}
