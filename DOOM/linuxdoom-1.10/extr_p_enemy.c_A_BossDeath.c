
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ acp1; } ;
struct TYPE_11__ {TYPE_1__ function; struct TYPE_11__* next; } ;
typedef TYPE_2__ thinker_t ;
struct TYPE_12__ {scalar_t__ type; scalar_t__ health; } ;
typedef TYPE_3__ mobj_t ;
struct TYPE_13__ {int tag; } ;
typedef TYPE_4__ line_t ;
typedef scalar_t__ actionf_p1 ;
struct TYPE_14__ {scalar_t__ health; } ;


 int EV_DoDoor (TYPE_4__*,int ) ;
 int EV_DoFloor (TYPE_4__*,int ) ;
 int G_ExitLevel () ;
 int MAXPLAYERS ;
 scalar_t__ MT_BABY ;
 scalar_t__ MT_BRUISER ;
 scalar_t__ MT_CYBORG ;
 scalar_t__ MT_FATSO ;
 scalar_t__ MT_SPIDER ;
 scalar_t__ P_MobjThinker ;
 int blazeOpen ;
 scalar_t__ commercial ;
 int gameepisode ;
 int gamemap ;
 scalar_t__ gamemode ;
 int lowerFloorToLowest ;
 scalar_t__* playeringame ;
 TYPE_6__* players ;
 int raiseToTexture ;
 TYPE_2__ thinkercap ;

void A_BossDeath (mobj_t* mo)
{
    thinker_t* th;
    mobj_t* mo2;
    line_t junk;
    int i;

    if ( gamemode == commercial)
    {
 if (gamemap != 7)
     return;

 if ((mo->type != MT_FATSO)
     && (mo->type != MT_BABY))
     return;
    }
    else
    {
 switch(gameepisode)
 {
   case 1:
     if (gamemap != 8)
  return;

     if (mo->type != MT_BRUISER)
  return;
     break;

   case 2:
     if (gamemap != 8)
  return;

     if (mo->type != MT_CYBORG)
  return;
     break;

   case 3:
     if (gamemap != 8)
  return;

     if (mo->type != MT_SPIDER)
  return;

     break;

   case 4:
     switch(gamemap)
     {
       case 6:
  if (mo->type != MT_CYBORG)
      return;
  break;

       case 8:
  if (mo->type != MT_SPIDER)
      return;
  break;

       default:
  return;
  break;
     }
     break;

   default:
     if (gamemap != 8)
  return;
     break;
 }

    }



    for (i=0 ; i<MAXPLAYERS ; i++)
 if (playeringame[i] && players[i].health > 0)
     break;

    if (i==MAXPLAYERS)
 return;



    for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
    {
 if (th->function.acp1 != (actionf_p1)P_MobjThinker)
     continue;

 mo2 = (mobj_t *)th;
 if (mo2 != mo
     && mo2->type == mo->type
     && mo2->health > 0)
 {

     return;
 }
    }


    if ( gamemode == commercial)
    {
 if (gamemap == 7)
 {
     if (mo->type == MT_FATSO)
     {
  junk.tag = 666;
  EV_DoFloor(&junk,lowerFloorToLowest);
  return;
     }

     if (mo->type == MT_BABY)
     {
  junk.tag = 667;
  EV_DoFloor(&junk,raiseToTexture);
  return;
     }
 }
    }
    else
    {
 switch(gameepisode)
 {
   case 1:
     junk.tag = 666;
     EV_DoFloor (&junk, lowerFloorToLowest);
     return;
     break;

   case 4:
     switch(gamemap)
     {
       case 6:
  junk.tag = 666;
  EV_DoDoor (&junk, blazeOpen);
  return;
  break;

       case 8:
  junk.tag = 666;
  EV_DoFloor (&junk, lowerFloorToLowest);
  return;
  break;
     }
 }
    }

    G_ExitLevel ();
}
