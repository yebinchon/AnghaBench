
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int forceTraceLight; scalar_t__ forceVLight; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_7__ {scalar_t__ surfaceType; scalar_t__ lightmapNum; size_t shaderNum; } ;
typedef TYPE_2__ dsurface_t ;
struct TYPE_8__ {int shader; } ;


 scalar_t__ MST_TRIANGLE_SOUP ;
 TYPE_1__* ShaderInfoForShader (int ) ;
 int TraceLtm (int) ;
 scalar_t__ defaulttracelight ;
 TYPE_2__* drawSurfaces ;
 TYPE_3__* dshaders ;
 int * entitySurface ;

void VL_DoForcedTraceLight(int num)
{
 dsurface_t *ds;
 shaderInfo_t *si;

 ds = &drawSurfaces[num];

 if ( ds->surfaceType == MST_TRIANGLE_SOUP )
  return;

 if ( ds->lightmapNum < 0 )
  return;


 if ( !entitySurface[num] )
 {
  si = ShaderInfoForShader( dshaders[ ds->shaderNum].shader );

  if (defaulttracelight)
  {
   if (si->forceVLight)
    return;
  }
  else
  {
   if (!si->forceTraceLight)
    return;
  }
 }

 TraceLtm(num);
}
