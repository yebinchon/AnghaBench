
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numVertexes; } ;


 int RB_CalcFogTexCoords (float*) ;
 double R_FogFactor (float,float) ;
 int SHADER_MAX_VERTEXES ;
 TYPE_1__ tess ;

void RB_CalcModulateRGBAsByFog( unsigned char *colors ) {
 int i;
 float texCoords[SHADER_MAX_VERTEXES][2];




 RB_CalcFogTexCoords( texCoords[0] );

 for ( i = 0; i < tess.numVertexes; i++, colors += 4 ) {
  float f = 1.0 - R_FogFactor( texCoords[i][0], texCoords[i][1] );
  colors[0] *= f;
  colors[1] *= f;
  colors[2] *= f;
  colors[3] *= f;
 }
}
