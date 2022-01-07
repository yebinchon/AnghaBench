
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_4__ pspdef_t ;
struct TYPE_11__ {TYPE_4__* psprites; TYPE_2__* mo; } ;
struct TYPE_9__ {TYPE_1__* sector; } ;
struct TYPE_8__ {TYPE_3__* subsector; } ;
struct TYPE_7__ {int lightlevel; } ;


 int LIGHTLEVELS ;
 int LIGHTSEGSHIFT ;
 int NUMPSPRITES ;
 int R_DrawPSprite (TYPE_4__*) ;
 int extralight ;
 int mceilingclip ;
 int mfloorclip ;
 int negonearray ;
 int * scalelight ;
 int screenheightarray ;
 int spritelights ;
 TYPE_5__* viewplayer ;

void R_DrawPlayerSprites (void)
{
    int i;
    int lightnum;
    pspdef_t* psp;


    lightnum =
 (viewplayer->mo->subsector->sector->lightlevel >> LIGHTSEGSHIFT)
 +extralight;

    if (lightnum < 0)
 spritelights = scalelight[0];
    else if (lightnum >= LIGHTLEVELS)
 spritelights = scalelight[LIGHTLEVELS-1];
    else
 spritelights = scalelight[lightnum];


    mfloorclip = screenheightarray;
    mceilingclip = negonearray;


    for (i=0, psp=viewplayer->psprites;
  i<NUMPSPRITES;
  i++,psp++)
    {
 if (psp->state)
     R_DrawPSprite (psp);
    }
}
