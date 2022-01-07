
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* sector; } ;
typedef TYPE_2__ subsector_t ;
typedef int mobj_t ;
struct TYPE_12__ {int x; int y; int angle; } ;
typedef TYPE_3__ mapthing_t ;
typedef int fixed_t ;
typedef int boolean ;
struct TYPE_14__ {int x; int y; } ;
struct TYPE_13__ {int viewz; TYPE_5__* mo; } ;
struct TYPE_10__ {int floorheight; } ;


 int ANG45 ;
 int ANGLETOFINESHIFT ;
 size_t BODYQUESIZE ;
 int FRACBITS ;
 int MT_TFOG ;
 int P_CheckPosition (TYPE_5__*,int,int) ;
 int P_RemoveMobj (TYPE_5__*) ;
 int * P_SpawnMobj (int,int,int ,int ) ;
 TYPE_2__* R_PointInSubsector (int,int) ;
 int S_StartSound (int *,int ) ;
 TYPE_5__** bodyque ;
 size_t bodyqueslot ;
 size_t consoleplayer ;
 int* finecosine ;
 int* finesine ;
 TYPE_4__* players ;
 int sfx_telept ;

boolean
G_CheckSpot
( int playernum,
  mapthing_t* mthing )
{
    fixed_t x;
    fixed_t y;
    subsector_t* ss;
    unsigned an;
    mobj_t* mo;
    int i;

    if (!players[playernum].mo)
    {

 for (i=0 ; i<playernum ; i++)
     if (players[i].mo->x == mthing->x << FRACBITS
  && players[i].mo->y == mthing->y << FRACBITS)
  return 0;
 return 1;
    }

    x = mthing->x << FRACBITS;
    y = mthing->y << FRACBITS;

    if (!P_CheckPosition (players[playernum].mo, x, y) )
 return 0;


    if (bodyqueslot >= BODYQUESIZE)
 P_RemoveMobj (bodyque[bodyqueslot%BODYQUESIZE]);
    bodyque[bodyqueslot%BODYQUESIZE] = players[playernum].mo;
    bodyqueslot++;


    ss = R_PointInSubsector (x,y);
    an = ( ANG45 * (mthing->angle/45) ) >> ANGLETOFINESHIFT;

    mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an]
        , ss->sector->floorheight
        , MT_TFOG);

    if (players[consoleplayer].viewz != 1)
 S_StartSound (mo, sfx_telept);

    return 1;
}
