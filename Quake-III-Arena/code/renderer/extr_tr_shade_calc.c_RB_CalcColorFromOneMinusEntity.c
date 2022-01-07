
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* currentEntity; } ;
struct TYPE_7__ {int numVertexes; } ;
struct TYPE_5__ {int* shaderRGBA; } ;
struct TYPE_6__ {TYPE_1__ e; } ;


 TYPE_4__ backEnd ;
 TYPE_3__ tess ;

void RB_CalcColorFromOneMinusEntity( unsigned char *dstColors )
{
 int i;
 int *pColors = ( int * ) dstColors;
 unsigned char invModulate[3];
 int c;

 if ( !backEnd.currentEntity )
  return;

 invModulate[0] = 255 - backEnd.currentEntity->e.shaderRGBA[0];
 invModulate[1] = 255 - backEnd.currentEntity->e.shaderRGBA[1];
 invModulate[2] = 255 - backEnd.currentEntity->e.shaderRGBA[2];
 invModulate[3] = 255 - backEnd.currentEntity->e.shaderRGBA[3];

 c = * ( int * ) invModulate;

 for ( i = 0; i < tess.numVertexes; i++, pColors++ )
 {
  *pColors = * ( int * ) invModulate;
 }
}
