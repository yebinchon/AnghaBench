
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; TYPE_1__* info; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_5__ {int deathsound; } ;


 scalar_t__ MT_CYBORG ;
 scalar_t__ MT_SPIDER ;
 int P_Random () ;
 int S_StartSound (TYPE_2__*,int) ;






void A_Scream (mobj_t* actor)
{
    int sound;

    switch (actor->info->deathsound)
    {
      case 0:
 return;

      case 130:
      case 129:
      case 128:
 sound = 130 + P_Random ()%3;
 break;

      case 132:
      case 131:
 sound = 132 + P_Random ()%2;
 break;

      default:
 sound = actor->info->deathsound;
 break;
    }


    if (actor->type==MT_SPIDER
 || actor->type == MT_CYBORG)
    {

 S_StartSound (((void*)0), sound);
    }
    else
 S_StartSound (actor, sound);
}
