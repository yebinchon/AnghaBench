
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mobj_t ;


 int S_StartSound (int *,int ) ;
 int sfx_bospn ;

void A_BrainPain (mobj_t* mo)
{
    S_StartSound (((void*)0),sfx_bospn);
}
