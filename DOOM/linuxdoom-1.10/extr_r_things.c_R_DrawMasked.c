
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_1__ vissprite_t ;
struct TYPE_9__ {int x2; int x1; scalar_t__ maskedtexturecol; } ;
typedef TYPE_2__ drawseg_t ;


 int R_DrawPlayerSprites () ;
 int R_DrawSprite (TYPE_1__*) ;
 int R_RenderMaskedSegRange (TYPE_2__*,int ,int ) ;
 int R_SortVisSprites () ;
 TYPE_2__* drawsegs ;
 TYPE_2__* ds_p ;
 int viewangleoffset ;
 scalar_t__ vissprite_p ;
 scalar_t__ vissprites ;
 TYPE_1__ vsprsortedhead ;

void R_DrawMasked (void)
{
    vissprite_t* spr;
    drawseg_t* ds;

    R_SortVisSprites ();

    if (vissprite_p > vissprites)
    {

 for (spr = vsprsortedhead.next ;
      spr != &vsprsortedhead ;
      spr=spr->next)
 {

     R_DrawSprite (spr);
 }
    }


    for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
 if (ds->maskedtexturecol)
     R_RenderMaskedSegRange (ds, ds->x1, ds->x2);



    if (!viewangleoffset)
 R_DrawPlayerSprites ();
}
