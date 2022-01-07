
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float shaderTime; int numVertexes; } ;


 float floor (float) ;
 TYPE_1__ tess ;

void RB_CalcScrollTexCoords( const float scrollSpeed[2], float *st )
{
 int i;
 float timeScale = tess.shaderTime;
 float adjustedScrollS, adjustedScrollT;

 adjustedScrollS = scrollSpeed[0] * timeScale;
 adjustedScrollT = scrollSpeed[1] * timeScale;



 adjustedScrollS = adjustedScrollS - floor( adjustedScrollS );
 adjustedScrollT = adjustedScrollT - floor( adjustedScrollT );

 for ( i = 0; i < tess.numVertexes; i++, st += 2 )
 {
  st[0] += adjustedScrollS;
  st[1] += adjustedScrollT;
 }
}
