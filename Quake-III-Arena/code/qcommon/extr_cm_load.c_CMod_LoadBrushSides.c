
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_2__ lump_t ;
struct TYPE_10__ {int shaderNum; int planeNum; } ;
typedef TYPE_3__ dbrushside_t ;
struct TYPE_11__ {size_t shaderNum; int surfaceFlags; int * plane; } ;
typedef TYPE_4__ cbrushside_t ;
struct TYPE_12__ {int numBrushSides; size_t numShaders; TYPE_1__* shaders; int * planes; TYPE_4__* brushsides; } ;
struct TYPE_8__ {int surfaceFlags; } ;


 int BOX_SIDES ;
 int Com_Error (int ,char*,...) ;
 int ERR_DROP ;
 TYPE_4__* Hunk_Alloc (int,int ) ;
 void* LittleLong (int ) ;
 TYPE_5__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadBrushSides (lump_t *l)
{
 int i;
 cbrushside_t *out;
 dbrushside_t *in;
 int count;
 int num;

 in = (void *)(cmod_base + l->fileofs);
 if ( l->filelen % sizeof(*in) ) {
  Com_Error (ERR_DROP, "MOD_LoadBmodel: funny lump size");
 }
 count = l->filelen / sizeof(*in);

 cm.brushsides = Hunk_Alloc( ( BOX_SIDES + count ) * sizeof( *cm.brushsides ), h_high );
 cm.numBrushSides = count;

 out = cm.brushsides;

 for ( i=0 ; i<count ; i++, in++, out++) {
  num = LittleLong( in->planeNum );
  out->plane = &cm.planes[num];
  out->shaderNum = LittleLong( in->shaderNum );
  if ( out->shaderNum < 0 || out->shaderNum >= cm.numShaders ) {
   Com_Error( ERR_DROP, "CMod_LoadBrushSides: bad shaderNum: %i", out->shaderNum );
  }
  out->surfaceFlags = cm.shaders[out->shaderNum].surfaceFlags;
 }
}
