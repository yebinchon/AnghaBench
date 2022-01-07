
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* powers; TYPE_1__* mo; } ;
typedef TYPE_2__ player_t ;
typedef int boolean ;
struct TYPE_5__ {int flags; } ;


 int INFRATICS ;
 int INVISTICS ;
 int INVULNTICS ;
 int IRONTICS ;
 int MF_SHADOW ;
 int P_GiveBody (TYPE_2__*,int) ;
 int pw_infrared ;
 int pw_invisibility ;
 int pw_invulnerability ;
 int pw_ironfeet ;
 int pw_strength ;

boolean
P_GivePower
( player_t* player,
  int power )
{
    if (power == pw_invulnerability)
    {
 player->powers[power] = INVULNTICS;
 return 1;
    }

    if (power == pw_invisibility)
    {
 player->powers[power] = INVISTICS;
 player->mo->flags |= MF_SHADOW;
 return 1;
    }

    if (power == pw_infrared)
    {
 player->powers[power] = INFRATICS;
 return 1;
    }

    if (power == pw_ironfeet)
    {
 player->powers[power] = IRONTICS;
 return 1;
    }

    if (power == pw_strength)
    {
 P_GiveBody (player, 100);
 player->powers[power] = 1;
 return 1;
    }

    if (player->powers[power])
 return 0;

    player->powers[power] = 1;
    return 1;
}
