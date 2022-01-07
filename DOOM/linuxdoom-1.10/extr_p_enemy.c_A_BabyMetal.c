
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mobj_t ;


 int A_Chase (int *) ;
 int S_StartSound (int *,int ) ;
 int sfx_bspwlk ;

void A_BabyMetal (mobj_t* mo)
{
    S_StartSound (mo, sfx_bspwlk);
    A_Chase (mo);
}
