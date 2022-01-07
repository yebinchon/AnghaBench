
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ side; int numsides; TYPE_1__* sides; struct TYPE_6__* next; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_7__ {int texture; } ;
struct TYPE_5__ {int texinfo; } ;


 scalar_t__ CONTENTS_LAVA ;
 scalar_t__ CONTENTS_SLIME ;
 scalar_t__ CONTENTS_WATER ;
 int Log_Print (char*,scalar_t__) ;
 scalar_t__ Q1_TextureContents (int ) ;
 int map_numtexinfo ;
 TYPE_3__* map_texinfo ;

void Q1_FixContentsTextures(bspbrush_t *brushlist)
{
 int i, texinfonum;
 bspbrush_t *brush;

 for (brush = brushlist; brush; brush = brush->next)
 {

  if (brush->side != CONTENTS_WATER &&
   brush->side != CONTENTS_SLIME &&
   brush->side != CONTENTS_LAVA) continue;

  for (i = 0; i < brush->numsides; i++)
  {
   texinfonum = brush->sides[i].texinfo;
   if (Q1_TextureContents(map_texinfo[texinfonum].texture) == brush->side) break;
  }

  if (i >= brush->numsides)
  {
   texinfonum = -1;
   for (i = 0; i < map_numtexinfo; i++)
   {
    if (Q1_TextureContents(map_texinfo[i].texture) == brush->side)
    {
     texinfonum = i;
     break;
    }
   }
  }

  if (texinfonum >= 0)
  {

   for (i = 0; i < brush->numsides; i++)
   {
    brush->sides[i].texinfo = texinfonum;
   }
  }
  else Log_Print("brush contents %d with wrong textures\n", brush->side);

 }
}
