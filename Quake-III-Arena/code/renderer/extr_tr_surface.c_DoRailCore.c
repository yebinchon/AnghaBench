
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {TYPE_2__* currentEntity; } ;
struct TYPE_7__ {int numVertexes; int*** texCoords; double** vertexColors; int* indexes; int numIndexes; int * xyz; } ;
struct TYPE_5__ {double* shaderRGBA; } ;
struct TYPE_6__ {TYPE_1__ e; } ;


 int VectorMA (int const,float,int const,int ) ;
 TYPE_4__ backEnd ;
 TYPE_3__ tess ;

__attribute__((used)) static void DoRailCore( const vec3_t start, const vec3_t end, const vec3_t up, float len, float spanWidth )
{
 float spanWidth2;
 int vbase;
 float t = len / 256.0f;

 vbase = tess.numVertexes;

 spanWidth2 = -spanWidth;


 VectorMA( start, spanWidth, up, tess.xyz[tess.numVertexes] );
 tess.texCoords[tess.numVertexes][0][0] = 0;
 tess.texCoords[tess.numVertexes][0][1] = 0;
 tess.vertexColors[tess.numVertexes][0] = backEnd.currentEntity->e.shaderRGBA[0] * 0.25;
 tess.vertexColors[tess.numVertexes][1] = backEnd.currentEntity->e.shaderRGBA[1] * 0.25;
 tess.vertexColors[tess.numVertexes][2] = backEnd.currentEntity->e.shaderRGBA[2] * 0.25;
 tess.numVertexes++;

 VectorMA( start, spanWidth2, up, tess.xyz[tess.numVertexes] );
 tess.texCoords[tess.numVertexes][0][0] = 0;
 tess.texCoords[tess.numVertexes][0][1] = 1;
 tess.vertexColors[tess.numVertexes][0] = backEnd.currentEntity->e.shaderRGBA[0];
 tess.vertexColors[tess.numVertexes][1] = backEnd.currentEntity->e.shaderRGBA[1];
 tess.vertexColors[tess.numVertexes][2] = backEnd.currentEntity->e.shaderRGBA[2];
 tess.numVertexes++;

 VectorMA( end, spanWidth, up, tess.xyz[tess.numVertexes] );

 tess.texCoords[tess.numVertexes][0][0] = t;
 tess.texCoords[tess.numVertexes][0][1] = 0;
 tess.vertexColors[tess.numVertexes][0] = backEnd.currentEntity->e.shaderRGBA[0];
 tess.vertexColors[tess.numVertexes][1] = backEnd.currentEntity->e.shaderRGBA[1];
 tess.vertexColors[tess.numVertexes][2] = backEnd.currentEntity->e.shaderRGBA[2];
 tess.numVertexes++;

 VectorMA( end, spanWidth2, up, tess.xyz[tess.numVertexes] );
 tess.texCoords[tess.numVertexes][0][0] = t;
 tess.texCoords[tess.numVertexes][0][1] = 1;
 tess.vertexColors[tess.numVertexes][0] = backEnd.currentEntity->e.shaderRGBA[0];
 tess.vertexColors[tess.numVertexes][1] = backEnd.currentEntity->e.shaderRGBA[1];
 tess.vertexColors[tess.numVertexes][2] = backEnd.currentEntity->e.shaderRGBA[2];
 tess.numVertexes++;

 tess.indexes[tess.numIndexes++] = vbase;
 tess.indexes[tess.numIndexes++] = vbase + 1;
 tess.indexes[tess.numIndexes++] = vbase + 2;

 tess.indexes[tess.numIndexes++] = vbase + 2;
 tess.indexes[tess.numIndexes++] = vbase + 1;
 tess.indexes[tess.numIndexes++] = vbase + 3;
}
