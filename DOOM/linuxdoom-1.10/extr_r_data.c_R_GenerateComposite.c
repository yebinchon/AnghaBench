
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int patchcount; int width; int height; TYPE_2__* patches; } ;
typedef TYPE_1__ texture_t ;
struct TYPE_7__ {int originx; int originy; int patch; } ;
typedef TYPE_2__ texpatch_t ;
struct TYPE_8__ {int * columnofs; int width; } ;
typedef TYPE_3__ patch_t ;
typedef int column_t ;
typedef int byte ;


 int LONG (int ) ;
 int PU_CACHE ;
 int PU_STATIC ;
 int R_DrawColumnInCache (int *,int *,int ,int ) ;
 int SHORT (int ) ;
 TYPE_3__* W_CacheLumpNum (int ,int ) ;
 int Z_ChangeTag (int *,int ) ;
 int * Z_Malloc (int ,int ,int *) ;
 short** texturecolumnlump ;
 unsigned short** texturecolumnofs ;
 int * texturecomposite ;
 int * texturecompositesize ;
 TYPE_1__** textures ;

void R_GenerateComposite (int texnum)
{
    byte* block;
    texture_t* texture;
    texpatch_t* patch;
    patch_t* realpatch;
    int x;
    int x1;
    int x2;
    int i;
    column_t* patchcol;
    short* collump;
    unsigned short* colofs;

    texture = textures[texnum];

    block = Z_Malloc (texturecompositesize[texnum],
        PU_STATIC,
        &texturecomposite[texnum]);

    collump = texturecolumnlump[texnum];
    colofs = texturecolumnofs[texnum];


    patch = texture->patches;

    for (i=0 , patch = texture->patches;
  i<texture->patchcount;
  i++, patch++)
    {
 realpatch = W_CacheLumpNum (patch->patch, PU_CACHE);
 x1 = patch->originx;
 x2 = x1 + SHORT(realpatch->width);

 if (x1<0)
     x = 0;
 else
     x = x1;

 if (x2 > texture->width)
     x2 = texture->width;

 for ( ; x<x2 ; x++)
 {

     if (collump[x] >= 0)
  continue;

     patchcol = (column_t *)((byte *)realpatch
        + LONG(realpatch->columnofs[x-x1]));
     R_DrawColumnInCache (patchcol,
     block + colofs[x],
     patch->originy,
     texture->height);
 }

    }



    Z_ChangeTag (block, PU_CACHE);
}
