
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mobjflags; int startfrac; scalar_t__ x1; scalar_t__ x2; scalar_t__ xiscale; int scale; int texturemid; int colormap; int patch; } ;
typedef TYPE_1__ vissprite_t ;
struct TYPE_6__ {int * columnofs; int width; } ;
typedef TYPE_2__ patch_t ;
typedef int fixed_t ;
typedef int column_t ;
typedef int byte ;


 int FRACBITS ;
 scalar_t__ FixedMul (int ,int ) ;
 int I_Error (char*) ;
 int LONG (int ) ;
 int MF_TRANSLATION ;
 int MF_TRANSSHIFT ;
 int PU_CACHE ;
 int R_DrawMaskedColumn (int *) ;
 int R_DrawTranslatedColumn ;
 int SHORT (int ) ;
 TYPE_2__* W_CacheLumpNum (int ,int ) ;
 int abs (scalar_t__) ;
 int basecolfunc ;
 scalar_t__ centeryfrac ;
 int colfunc ;
 int dc_colormap ;
 int dc_iscale ;
 int dc_texturemid ;
 int dc_translation ;
 scalar_t__ dc_x ;
 int detailshift ;
 int firstspritelump ;
 int fuzzcolfunc ;
 scalar_t__ sprtopscreen ;
 int spryscale ;
 int translationtables ;

void
R_DrawVisSprite
( vissprite_t* vis,
  int x1,
  int x2 )
{
    column_t* column;
    int texturecolumn;
    fixed_t frac;
    patch_t* patch;


    patch = W_CacheLumpNum (vis->patch+firstspritelump, PU_CACHE);

    dc_colormap = vis->colormap;

    if (!dc_colormap)
    {

 colfunc = fuzzcolfunc;
    }
    else if (vis->mobjflags & MF_TRANSLATION)
    {
 colfunc = R_DrawTranslatedColumn;
 dc_translation = translationtables - 256 +
     ( (vis->mobjflags & MF_TRANSLATION) >> (MF_TRANSSHIFT-8) );
    }

    dc_iscale = abs(vis->xiscale)>>detailshift;
    dc_texturemid = vis->texturemid;
    frac = vis->startfrac;
    spryscale = vis->scale;
    sprtopscreen = centeryfrac - FixedMul(dc_texturemid,spryscale);

    for (dc_x=vis->x1 ; dc_x<=vis->x2 ; dc_x++, frac += vis->xiscale)
    {
 texturecolumn = frac>>FRACBITS;




 column = (column_t *) ((byte *)patch +
          LONG(patch->columnofs[texturecolumn]));
 R_DrawMaskedColumn (column);
    }

    colfunc = basecolfunc;
}
