
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t weapontype_t ;
struct TYPE_6__ {int* weaponowned; size_t pendingweapon; int bonuscount; } ;
typedef TYPE_1__ player_t ;
typedef int boolean ;
struct TYPE_7__ {scalar_t__ ammo; } ;


 scalar_t__ BONUSADD ;
 int P_GiveAmmo (TYPE_1__*,scalar_t__,int) ;
 int S_StartSound (int *,int ) ;
 scalar_t__ am_noammo ;
 size_t consoleplayer ;
 int deathmatch ;
 scalar_t__ netgame ;
 TYPE_1__* players ;
 int sfx_wpnup ;
 TYPE_2__* weaponinfo ;

boolean
P_GiveWeapon
( player_t* player,
  weapontype_t weapon,
  boolean dropped )
{
    boolean gaveammo;
    boolean gaveweapon;

    if (netgame
 && (deathmatch!=2)
  && !dropped )
    {

 if (player->weaponowned[weapon])
     return 0;

 player->bonuscount += BONUSADD;
 player->weaponowned[weapon] = 1;

 if (deathmatch)
     P_GiveAmmo (player, weaponinfo[weapon].ammo, 5);
 else
     P_GiveAmmo (player, weaponinfo[weapon].ammo, 2);
 player->pendingweapon = weapon;

 if (player == &players[consoleplayer])
     S_StartSound (((void*)0), sfx_wpnup);
 return 0;
    }

    if (weaponinfo[weapon].ammo != am_noammo)
    {


 if (dropped)
     gaveammo = P_GiveAmmo (player, weaponinfo[weapon].ammo, 1);
 else
     gaveammo = P_GiveAmmo (player, weaponinfo[weapon].ammo, 2);
    }
    else
 gaveammo = 0;

    if (player->weaponowned[weapon])
 gaveweapon = 0;
    else
    {
 gaveweapon = 1;
 player->weaponowned[weapon] = 1;
 player->pendingweapon = weapon;
    }

    return (gaveweapon || gaveammo);
}
