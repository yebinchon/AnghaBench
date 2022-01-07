
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mobj_t ;


 int A_Fire (int *) ;
 int S_StartSound (int *,int ) ;
 int sfx_flamst ;

void A_StartFire (mobj_t* actor)
{
    S_StartSound(actor,sfx_flamst);
    A_Fire(actor);
}
