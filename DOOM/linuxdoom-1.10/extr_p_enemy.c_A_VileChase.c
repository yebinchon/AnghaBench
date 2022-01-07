
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int speed; int spawnhealth; int flags; int raisestate; } ;
typedef TYPE_1__ mobjinfo_t ;
struct TYPE_11__ {size_t movedir; int x; int y; int height; struct TYPE_11__* target; int health; int flags; TYPE_1__* info; } ;
typedef TYPE_2__ mobj_t ;


 int A_Chase (TYPE_2__*) ;
 int A_FaceTarget (TYPE_2__*) ;
 size_t DI_NODIR ;
 int MAPBLOCKSHIFT ;
 int MAXRADIUS ;
 int PIT_VileCheck ;
 int P_BlockThingsIterator (int,int,int ) ;
 int P_SetMobjState (TYPE_2__*,int ) ;
 int S_StartSound (TYPE_2__*,int ) ;
 int S_VILE_HEAL1 ;
 int bmaporgx ;
 int bmaporgy ;
 TYPE_2__* corpsehit ;
 int sfx_slop ;
 TYPE_2__* vileobj ;
 int viletryx ;
 int viletryy ;
 int* xspeed ;
 int* yspeed ;

void A_VileChase (mobj_t* actor)
{
    int xl;
    int xh;
    int yl;
    int yh;

    int bx;
    int by;

    mobjinfo_t* info;
    mobj_t* temp;

    if (actor->movedir != DI_NODIR)
    {

 viletryx =
     actor->x + actor->info->speed*xspeed[actor->movedir];
 viletryy =
     actor->y + actor->info->speed*yspeed[actor->movedir];

 xl = (viletryx - bmaporgx - MAXRADIUS*2)>>MAPBLOCKSHIFT;
 xh = (viletryx - bmaporgx + MAXRADIUS*2)>>MAPBLOCKSHIFT;
 yl = (viletryy - bmaporgy - MAXRADIUS*2)>>MAPBLOCKSHIFT;
 yh = (viletryy - bmaporgy + MAXRADIUS*2)>>MAPBLOCKSHIFT;

 vileobj = actor;
 for (bx=xl ; bx<=xh ; bx++)
 {
     for (by=yl ; by<=yh ; by++)
     {



  if (!P_BlockThingsIterator(bx,by,PIT_VileCheck))
  {

      temp = actor->target;
      actor->target = corpsehit;
      A_FaceTarget (actor);
      actor->target = temp;

      P_SetMobjState (actor, S_VILE_HEAL1);
      S_StartSound (corpsehit, sfx_slop);
      info = corpsehit->info;

      P_SetMobjState (corpsehit,info->raisestate);
      corpsehit->height <<= 2;
      corpsehit->flags = info->flags;
      corpsehit->health = info->spawnhealth;
      corpsehit->target = ((void*)0);

      return;
  }
     }
 }
    }


    A_Chase (actor);
}
