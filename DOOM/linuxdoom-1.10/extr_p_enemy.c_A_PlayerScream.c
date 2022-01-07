
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int health; } ;
typedef TYPE_1__ mobj_t ;


 int S_StartSound (TYPE_1__*,int) ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;
 int sfx_pdiehi ;
 int sfx_pldeth ;

void A_PlayerScream (mobj_t* mo)
{

    int sound = sfx_pldeth;

    if ( (gamemode == commercial)
 && (mo->health < -50))
    {


 sound = sfx_pdiehi;
    }

    S_StartSound (mo, sound);
}
