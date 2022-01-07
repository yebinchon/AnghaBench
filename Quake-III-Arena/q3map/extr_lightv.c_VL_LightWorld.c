
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ numvolumes; } ;
struct TYPE_3__ {scalar_t__ insolid; } ;


 float FloatForKey (int *,char*) ;
 int GetVectorForKey (int *,char*,int ) ;
 int RunThreadsOnIndividual (int,int ,int ) ;
 int VL_DoForcedTraceLightSurfaces () ;
 int VL_FloodLightThread ;
 int VL_Radiosity () ;
 int VL_StoreLightmap () ;
 int VectorScale (int ,float,int ) ;
 int _printf (char*,int) ;
 int * entities ;
 int lightAmbientColor ;
 TYPE_2__** lsurfaceTest ;
 int numDrawSurfaces ;
 int numvlights ;
 int qtrue ;
 int radiosity ;
 int radiosity_scale ;
 TYPE_1__** vlights ;

void VL_LightWorld(void)
{
 int i, numcastedvolumes, numvlightsinsolid;
 float f;


 GetVectorForKey( &entities[0], "_color", lightAmbientColor );
 f = FloatForKey( &entities[0], "ambient" );
 VectorScale( lightAmbientColor, f, lightAmbientColor );
 _printf("%7i lights\n", numvlights);
 RunThreadsOnIndividual( numvlights, qtrue, VL_FloodLightThread );

 numcastedvolumes = 0;
 for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
  if (lsurfaceTest[i])
   numcastedvolumes += lsurfaceTest[i]->numvolumes;
 }
 _printf("%7i light volumes casted\n", numcastedvolumes);
 numvlightsinsolid = 0;
 for (i = 0; i < numvlights; i++)
 {
  if (vlights[i]->insolid)
   numvlightsinsolid++;
 }
 _printf("%7i lights in solid\n", numvlightsinsolid);

 radiosity_scale = 1;
 for (i = 0; i < radiosity; i++) {
  VL_Radiosity();
  radiosity_scale <<= 1;
 }

 VL_StoreLightmap();

 VL_DoForcedTraceLightSurfaces();
}
