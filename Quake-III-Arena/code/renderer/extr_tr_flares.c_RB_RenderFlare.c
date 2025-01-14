
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_11__ {int drawIntensity; int eyeZ; scalar_t__ windowY; scalar_t__ windowX; int fogNum; int color; } ;
typedef TYPE_3__ flare_t ;
struct TYPE_10__ {float viewportWidth; } ;
struct TYPE_9__ {int c_flareRenders; } ;
struct TYPE_15__ {TYPE_2__ viewParms; TYPE_1__ pc; } ;
struct TYPE_14__ {float value; } ;
struct TYPE_13__ {size_t numVertexes; int*** texCoords; int** vertexColors; int* indexes; int numIndexes; scalar_t__** xyz; } ;
struct TYPE_12__ {int identityLight; int flareShader; } ;


 int RB_BeginSurface (int ,int ) ;
 int RB_EndSurface () ;
 int VectorScale (int ,int,int*) ;
 TYPE_7__ backEnd ;
 TYPE_6__* r_flareSize ;
 TYPE_5__ tess ;
 TYPE_4__ tr ;

void RB_RenderFlare( flare_t *f ) {
 float size;
 vec3_t color;
 int iColor[3];

 backEnd.pc.c_flareRenders++;

 VectorScale( f->color, f->drawIntensity*tr.identityLight, color );
 iColor[0] = color[0] * 255;
 iColor[1] = color[1] * 255;
 iColor[2] = color[2] * 255;

 size = backEnd.viewParms.viewportWidth * ( r_flareSize->value/640.0f + 8 / -f->eyeZ );

 RB_BeginSurface( tr.flareShader, f->fogNum );


 tess.xyz[tess.numVertexes][0] = f->windowX - size;
 tess.xyz[tess.numVertexes][1] = f->windowY - size;
 tess.texCoords[tess.numVertexes][0][0] = 0;
 tess.texCoords[tess.numVertexes][0][1] = 0;
 tess.vertexColors[tess.numVertexes][0] = iColor[0];
 tess.vertexColors[tess.numVertexes][1] = iColor[1];
 tess.vertexColors[tess.numVertexes][2] = iColor[2];
 tess.vertexColors[tess.numVertexes][3] = 255;
 tess.numVertexes++;

 tess.xyz[tess.numVertexes][0] = f->windowX - size;
 tess.xyz[tess.numVertexes][1] = f->windowY + size;
 tess.texCoords[tess.numVertexes][0][0] = 0;
 tess.texCoords[tess.numVertexes][0][1] = 1;
 tess.vertexColors[tess.numVertexes][0] = iColor[0];
 tess.vertexColors[tess.numVertexes][1] = iColor[1];
 tess.vertexColors[tess.numVertexes][2] = iColor[2];
 tess.vertexColors[tess.numVertexes][3] = 255;
 tess.numVertexes++;

 tess.xyz[tess.numVertexes][0] = f->windowX + size;
 tess.xyz[tess.numVertexes][1] = f->windowY + size;
 tess.texCoords[tess.numVertexes][0][0] = 1;
 tess.texCoords[tess.numVertexes][0][1] = 1;
 tess.vertexColors[tess.numVertexes][0] = iColor[0];
 tess.vertexColors[tess.numVertexes][1] = iColor[1];
 tess.vertexColors[tess.numVertexes][2] = iColor[2];
 tess.vertexColors[tess.numVertexes][3] = 255;
 tess.numVertexes++;

 tess.xyz[tess.numVertexes][0] = f->windowX + size;
 tess.xyz[tess.numVertexes][1] = f->windowY - size;
 tess.texCoords[tess.numVertexes][0][0] = 1;
 tess.texCoords[tess.numVertexes][0][1] = 0;
 tess.vertexColors[tess.numVertexes][0] = iColor[0];
 tess.vertexColors[tess.numVertexes][1] = iColor[1];
 tess.vertexColors[tess.numVertexes][2] = iColor[2];
 tess.vertexColors[tess.numVertexes][3] = 255;
 tess.numVertexes++;

 tess.indexes[tess.numIndexes++] = 0;
 tess.indexes[tess.numIndexes++] = 1;
 tess.indexes[tess.numIndexes++] = 2;
 tess.indexes[tess.numIndexes++] = 0;
 tess.indexes[tess.numIndexes++] = 2;
 tess.indexes[tess.numIndexes++] = 3;

 RB_EndSurface();
}
