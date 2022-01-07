
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mobj_t ;


 int A_FaceTarget (int *) ;
 int S_StartSound (int *,int ) ;
 int sfx_manatk ;

void A_FatRaise (mobj_t *actor)
{
    A_FaceTarget (actor);
    S_StartSound (actor, sfx_manatk);
}
