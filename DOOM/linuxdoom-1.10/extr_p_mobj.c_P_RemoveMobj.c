
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int thinker_t ;
struct TYPE_5__ {int flags; scalar_t__ type; int spawnpoint; } ;
typedef TYPE_1__ mobj_t ;


 int ITEMQUESIZE ;
 int MF_DROPPED ;
 int MF_SPECIAL ;
 scalar_t__ MT_INS ;
 scalar_t__ MT_INV ;
 int P_RemoveThinker (int *) ;
 int P_UnsetThingPosition (TYPE_1__*) ;
 int S_StopSound (TYPE_1__*) ;
 size_t iquehead ;
 size_t iquetail ;
 int * itemrespawnque ;
 int * itemrespawntime ;
 int leveltime ;

void P_RemoveMobj (mobj_t* mobj)
{
    if ((mobj->flags & MF_SPECIAL)
 && !(mobj->flags & MF_DROPPED)
 && (mobj->type != MT_INV)
 && (mobj->type != MT_INS))
    {
 itemrespawnque[iquehead] = mobj->spawnpoint;
 itemrespawntime[iquehead] = leveltime;
 iquehead = (iquehead+1)&(ITEMQUESIZE-1);


 if (iquehead == iquetail)
     iquetail = (iquetail+1)&(ITEMQUESIZE-1);
    }


    P_UnsetThingPosition (mobj);


    S_StopSound (mobj);


    P_RemoveThinker ((thinker_t*)mobj);
}
