
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; } ;
struct TYPE_6__ {size_t ctr; int * p; TYPE_1__ loc; } ;
typedef TYPE_2__ anim_t ;
struct TYPE_7__ {int epsd; } ;


 int FB ;
 int* NUMANIMS ;
 int V_DrawPatch (int ,int ,int ,int ) ;
 TYPE_2__** anims ;
 scalar_t__ commercial ;
 TYPE_3__* wbs ;

void WI_drawAnimatedBack(void)
{
    int i;
    anim_t* a;

    if (commercial)
 return;

    if (wbs->epsd > 2)
 return;

    for (i=0 ; i<NUMANIMS[wbs->epsd] ; i++)
    {
 a = &anims[wbs->epsd][i];

 if (a->ctr >= 0)
     V_DrawPatch(a->loc.x, a->loc.y, FB, a->p[a->ctr]);
    }

}
