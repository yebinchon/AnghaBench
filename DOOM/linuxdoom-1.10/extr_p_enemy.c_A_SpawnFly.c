
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int mobjtype_t ;
struct TYPE_11__ {int y; int x; TYPE_1__* info; int z; struct TYPE_11__* target; scalar_t__ reactiontime; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_10__ {int seestate; } ;


 int MT_BABY ;
 int MT_BRUISER ;
 int MT_FATSO ;
 int MT_HEAD ;
 int MT_KNIGHT ;
 int MT_PAIN ;
 int MT_SERGEANT ;
 int MT_SHADOWS ;
 int MT_SPAWNFIRE ;
 int MT_TROOP ;
 int MT_UNDEAD ;
 int MT_VILE ;
 scalar_t__ P_LookForPlayers (TYPE_2__*,int) ;
 int P_Random () ;
 int P_RemoveMobj (TYPE_2__*) ;
 int P_SetMobjState (TYPE_2__*,int ) ;
 TYPE_2__* P_SpawnMobj (int ,int ,int ,int ) ;
 int P_TeleportMove (TYPE_2__*,int ,int ) ;
 int S_StartSound (TYPE_2__*,int ) ;
 int sfx_telept ;

void A_SpawnFly (mobj_t* mo)
{
    mobj_t* newmobj;
    mobj_t* fog;
    mobj_t* targ;
    int r;
    mobjtype_t type;

    if (--mo->reactiontime)
 return;

    targ = mo->target;


    fog = P_SpawnMobj (targ->x, targ->y, targ->z, MT_SPAWNFIRE);
    S_StartSound (fog, sfx_telept);


    r = P_Random ();



    if ( r<50 )
 type = MT_TROOP;
    else if (r<90)
 type = MT_SERGEANT;
    else if (r<120)
 type = MT_SHADOWS;
    else if (r<130)
 type = MT_PAIN;
    else if (r<160)
 type = MT_HEAD;
    else if (r<162)
 type = MT_VILE;
    else if (r<172)
 type = MT_UNDEAD;
    else if (r<192)
 type = MT_BABY;
    else if (r<222)
 type = MT_FATSO;
    else if (r<246)
 type = MT_KNIGHT;
    else
 type = MT_BRUISER;

    newmobj = P_SpawnMobj (targ->x, targ->y, targ->z, type);
    if (P_LookForPlayers (newmobj, 1) )
 P_SetMobjState (newmobj, newmobj->info->seestate);


    P_TeleportMove (newmobj, newmobj->x, newmobj->y);


    P_RemoveMobj (mo);
}
