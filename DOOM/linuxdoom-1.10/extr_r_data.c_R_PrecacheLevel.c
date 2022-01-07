
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_17__ {scalar_t__ acp1; } ;
struct TYPE_18__ {TYPE_2__ function; struct TYPE_18__* next; } ;
typedef TYPE_3__ thinker_t ;
struct TYPE_19__ {int patchcount; TYPE_1__* patches; } ;
typedef TYPE_4__ texture_t ;
struct TYPE_20__ {int* lump; } ;
typedef TYPE_5__ spriteframe_t ;
struct TYPE_21__ {size_t sprite; } ;
typedef TYPE_6__ mobj_t ;
typedef scalar_t__ actionf_p1 ;
struct TYPE_22__ {int numframes; TYPE_5__* spriteframes; } ;
struct TYPE_16__ {int patch; } ;
struct TYPE_15__ {scalar_t__ size; } ;
struct TYPE_14__ {size_t floorpic; size_t ceilingpic; } ;
struct TYPE_13__ {size_t toptexture; size_t midtexture; size_t bottomtexture; } ;


 int PU_CACHE ;
 scalar_t__ P_MobjThinker ;
 int W_CacheLumpNum (int,int ) ;
 char* alloca (int) ;
 scalar_t__ demoplayback ;
 int firstflat ;
 int firstspritelump ;
 scalar_t__ flatmemory ;
 TYPE_12__* lumpinfo ;
 int memset (char*,int ,int) ;
 int numflats ;
 int numsectors ;
 int numsides ;
 int numsprites ;
 int numtextures ;
 TYPE_11__* sectors ;
 TYPE_10__* sides ;
 size_t skytexture ;
 scalar_t__ spritememory ;
 TYPE_9__* sprites ;
 scalar_t__ texturememory ;
 TYPE_4__** textures ;
 TYPE_3__ thinkercap ;

void R_PrecacheLevel (void)
{
    char* flatpresent;
    char* texturepresent;
    char* spritepresent;

    int i;
    int j;
    int k;
    int lump;

    texture_t* texture;
    thinker_t* th;
    spriteframe_t* sf;

    if (demoplayback)
 return;


    flatpresent = alloca(numflats);
    memset (flatpresent,0,numflats);

    for (i=0 ; i<numsectors ; i++)
    {
 flatpresent[sectors[i].floorpic] = 1;
 flatpresent[sectors[i].ceilingpic] = 1;
    }

    flatmemory = 0;

    for (i=0 ; i<numflats ; i++)
    {
 if (flatpresent[i])
 {
     lump = firstflat + i;
     flatmemory += lumpinfo[lump].size;
     W_CacheLumpNum(lump, PU_CACHE);
 }
    }


    texturepresent = alloca(numtextures);
    memset (texturepresent,0, numtextures);

    for (i=0 ; i<numsides ; i++)
    {
 texturepresent[sides[i].toptexture] = 1;
 texturepresent[sides[i].midtexture] = 1;
 texturepresent[sides[i].bottomtexture] = 1;
    }







    texturepresent[skytexture] = 1;

    texturememory = 0;
    for (i=0 ; i<numtextures ; i++)
    {
 if (!texturepresent[i])
     continue;

 texture = textures[i];

 for (j=0 ; j<texture->patchcount ; j++)
 {
     lump = texture->patches[j].patch;
     texturememory += lumpinfo[lump].size;
     W_CacheLumpNum(lump , PU_CACHE);
 }
    }


    spritepresent = alloca(numsprites);
    memset (spritepresent,0, numsprites);

    for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
    {
 if (th->function.acp1 == (actionf_p1)P_MobjThinker)
     spritepresent[((mobj_t *)th)->sprite] = 1;
    }

    spritememory = 0;
    for (i=0 ; i<numsprites ; i++)
    {
 if (!spritepresent[i])
     continue;

 for (j=0 ; j<sprites[i].numframes ; j++)
 {
     sf = &sprites[i].spriteframes[j];
     for (k=0 ; k<8 ; k++)
     {
  lump = firstspritelump + sf->lump[k];
  spritememory += lumpinfo[lump].size;
  W_CacheLumpNum(lump , PU_CACHE);
     }
 }
    }
}
