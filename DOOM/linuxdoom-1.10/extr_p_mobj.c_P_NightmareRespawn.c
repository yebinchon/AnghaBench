
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {TYPE_3__* sector; } ;
typedef TYPE_5__ subsector_t ;
struct TYPE_20__ {int x; int y; int angle; int options; } ;
struct TYPE_19__ {int x; int y; int angle; int reactiontime; int flags; TYPE_7__ spawnpoint; int type; TYPE_4__* info; TYPE_2__* subsector; } ;
typedef TYPE_6__ mobj_t ;
typedef TYPE_7__ mapthing_t ;
typedef int fixed_t ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {int floorheight; } ;
struct TYPE_15__ {TYPE_1__* sector; } ;
struct TYPE_14__ {int floorheight; } ;


 int ANG45 ;
 int FRACBITS ;
 int MF_AMBUSH ;
 int MF_SPAWNCEILING ;
 int MTF_AMBUSH ;
 int MT_TFOG ;
 int ONCEILINGZ ;
 int ONFLOORZ ;
 int P_CheckPosition (TYPE_6__*,int,int) ;
 int P_RemoveMobj (TYPE_6__*) ;
 TYPE_6__* P_SpawnMobj (int,int,int,int ) ;
 TYPE_5__* R_PointInSubsector (int,int) ;
 int S_StartSound (TYPE_6__*,int ) ;
 int sfx_telept ;

void
P_NightmareRespawn (mobj_t* mobj)
{
    fixed_t x;
    fixed_t y;
    fixed_t z;
    subsector_t* ss;
    mobj_t* mo;
    mapthing_t* mthing;

    x = mobj->spawnpoint.x << FRACBITS;
    y = mobj->spawnpoint.y << FRACBITS;


    if (!P_CheckPosition (mobj, x, y) )
 return;



    mo = P_SpawnMobj (mobj->x,
        mobj->y,
        mobj->subsector->sector->floorheight , MT_TFOG);

    S_StartSound (mo, sfx_telept);


    ss = R_PointInSubsector (x,y);

    mo = P_SpawnMobj (x, y, ss->sector->floorheight , MT_TFOG);

    S_StartSound (mo, sfx_telept);


    mthing = &mobj->spawnpoint;


    if (mobj->info->flags & MF_SPAWNCEILING)
 z = ONCEILINGZ;
    else
 z = ONFLOORZ;


    mo = P_SpawnMobj (x,y,z, mobj->type);
    mo->spawnpoint = mobj->spawnpoint;
    mo->angle = ANG45 * (mthing->angle/45);

    if (mthing->options & MTF_AMBUSH)
 mo->flags |= MF_AMBUSH;

    mo->reactiontime = 18;


    P_RemoveMobj (mobj);
}
