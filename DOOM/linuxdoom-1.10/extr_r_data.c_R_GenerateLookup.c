
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int patchcount; char* name; int height; TYPE_2__* patches; } ;
typedef TYPE_1__ texture_t ;
struct TYPE_7__ {short patch; int originx; } ;
typedef TYPE_2__ texpatch_t ;
struct TYPE_8__ {int * columnofs; int width; } ;
typedef TYPE_3__ patch_t ;
typedef int byte ;


 int I_Error (char*,int) ;
 int LONG (int ) ;
 int PU_CACHE ;
 int SHORT (int ) ;
 TYPE_3__* W_CacheLumpNum (short,int ) ;
 scalar_t__ alloca (int) ;
 int memset (int*,int ,int) ;
 int printf (char*,char*) ;
 short** texturecolumnlump ;
 unsigned short** texturecolumnofs ;
 scalar_t__* texturecomposite ;
 int* texturecompositesize ;
 TYPE_1__** textures ;

void R_GenerateLookup (int texnum)
{
    texture_t* texture;
    byte* patchcount;
    texpatch_t* patch;
    patch_t* realpatch;
    int x;
    int x1;
    int x2;
    int i;
    short* collump;
    unsigned short* colofs;

    texture = textures[texnum];


    texturecomposite[texnum] = 0;

    texturecompositesize[texnum] = 0;
    collump = texturecolumnlump[texnum];
    colofs = texturecolumnofs[texnum];





    patchcount = (byte *)alloca (texture->width);
    memset (patchcount, 0, texture->width);
    patch = texture->patches;

    for (i=0 , patch = texture->patches;
  i<texture->patchcount;
  i++, patch++)
    {
 realpatch = W_CacheLumpNum (patch->patch, PU_CACHE);
 x1 = patch->originx;
 x2 = x1 + SHORT(realpatch->width);

 if (x1 < 0)
     x = 0;
 else
     x = x1;

 if (x2 > texture->width)
     x2 = texture->width;
 for ( ; x<x2 ; x++)
 {
     patchcount[x]++;
     collump[x] = patch->patch;
     colofs[x] = LONG(realpatch->columnofs[x-x1])+3;
 }
    }

    for (x=0 ; x<texture->width ; x++)
    {
 if (!patchcount[x])
 {
     printf ("R_GenerateLookup: column without a patch (%s)\n",
      texture->name);
     return;
 }


 if (patchcount[x] > 1)
 {

     collump[x] = -1;
     colofs[x] = texturecompositesize[texnum];

     if (texturecompositesize[texnum] > 0x10000-texture->height)
     {
  I_Error ("R_GenerateLookup: texture %i is >64k",
    texnum);
     }

     texturecompositesize[texnum] += texture->height;
 }
    }
}
