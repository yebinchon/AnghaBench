
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* lump; scalar_t__* flip; } ;
typedef TYPE_1__ spriteframe_t ;
struct TYPE_7__ {TYPE_1__* spriteframes; } ;
typedef TYPE_2__ spritedef_t ;
typedef int patch_t ;
typedef scalar_t__ boolean ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {size_t sprite; size_t frame; } ;


 size_t FF_FRAMEMASK ;
 int F_CastPrint (int ) ;
 int PU_CACHE ;
 int V_DrawPatch (int,int,int ,int *) ;
 int V_DrawPatchFlipped (int,int,int ,int *) ;
 int * W_CacheLumpName (char*,int ) ;
 int * W_CacheLumpNum (scalar_t__,int ) ;
 size_t castnum ;
 TYPE_5__* castorder ;
 TYPE_4__* caststate ;
 scalar_t__ firstspritelump ;
 TYPE_2__* sprites ;

void F_CastDrawer (void)
{
    spritedef_t* sprdef;
    spriteframe_t* sprframe;
    int lump;
    boolean flip;
    patch_t* patch;


    V_DrawPatch (0,0,0, W_CacheLumpName ("BOSSBACK", PU_CACHE));

    F_CastPrint (castorder[castnum].name);


    sprdef = &sprites[caststate->sprite];
    sprframe = &sprdef->spriteframes[ caststate->frame & FF_FRAMEMASK];
    lump = sprframe->lump[0];
    flip = (boolean)sprframe->flip[0];

    patch = W_CacheLumpNum (lump+firstspritelump, PU_CACHE);
    if (flip)
 V_DrawPatchFlipped (160,170,0,patch);
    else
 V_DrawPatch (160,170,0,patch);
}
