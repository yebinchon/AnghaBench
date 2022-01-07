
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {size_t last; } ;


 int FB ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 int V_DrawPatch (int,int,int ,TYPE_2__*) ;
 int WI_TITLEY ;
 TYPE_2__* finished ;
 TYPE_2__** lnames ;
 TYPE_1__* wbs ;

void WI_drawLF(void)
{
    int y = WI_TITLEY;


    V_DrawPatch((SCREENWIDTH - SHORT(lnames[wbs->last]->width))/2,
  y, FB, lnames[wbs->last]);


    y += (5*SHORT(lnames[wbs->last]->height))/4;

    V_DrawPatch((SCREENWIDTH - SHORT(finished->width))/2,
  y, FB, finished);
}
