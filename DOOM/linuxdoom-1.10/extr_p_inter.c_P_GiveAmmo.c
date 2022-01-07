
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* ammo; int* maxammo; size_t readyweapon; size_t pendingweapon; int * weaponowned; } ;
typedef TYPE_1__ player_t ;
typedef int boolean ;
typedef size_t ammotype_t ;


 int I_Error (char*,size_t) ;
 size_t NUMAMMO ;



 size_t am_noammo ;

 int* clipammo ;
 scalar_t__ gameskill ;
 scalar_t__ sk_baby ;
 scalar_t__ sk_nightmare ;
 size_t wp_chaingun ;
 size_t wp_fist ;
 size_t wp_missile ;
 size_t wp_pistol ;
 size_t wp_plasma ;
 size_t wp_shotgun ;

boolean
P_GiveAmmo
( player_t* player,
  ammotype_t ammo,
  int num )
{
    int oldammo;

    if (ammo == am_noammo)
 return 0;

    if (ammo < 0 || ammo > NUMAMMO)
 I_Error ("P_GiveAmmo: bad type %i", ammo);

    if ( player->ammo[ammo] == player->maxammo[ammo] )
 return 0;

    if (num)
 num *= clipammo[ammo];
    else
 num = clipammo[ammo]/2;

    if (gameskill == sk_baby
 || gameskill == sk_nightmare)
    {


 num <<= 1;
    }


    oldammo = player->ammo[ammo];
    player->ammo[ammo] += num;

    if (player->ammo[ammo] > player->maxammo[ammo])
 player->ammo[ammo] = player->maxammo[ammo];




    if (oldammo)
 return 1;




    switch (ammo)
    {
      case 130:
 if (player->readyweapon == wp_fist)
 {
     if (player->weaponowned[wp_chaingun])
  player->pendingweapon = wp_chaingun;
     else
  player->pendingweapon = wp_pistol;
 }
 break;

      case 128:
 if (player->readyweapon == wp_fist
     || player->readyweapon == wp_pistol)
 {
     if (player->weaponowned[wp_shotgun])
  player->pendingweapon = wp_shotgun;
 }
 break;

      case 131:
 if (player->readyweapon == wp_fist
     || player->readyweapon == wp_pistol)
 {
     if (player->weaponowned[wp_plasma])
  player->pendingweapon = wp_plasma;
 }
 break;

      case 129:
 if (player->readyweapon == wp_fist)
 {
     if (player->weaponowned[wp_missile])
  player->pendingweapon = wp_missile;
 }
      default:
 break;
    }

    return 1;
}
