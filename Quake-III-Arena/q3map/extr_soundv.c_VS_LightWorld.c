
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
 int VS_DoForcedTraceLightSurfaces () ;
 int VS_FloodLightThread ;
 int VS_Radiosity () ;
 int VS_StoreLightmap () ;
 int VectorScale (int ,float,int ) ;
 int _printf (char*,int) ;
 int * entities ;
 int lightAmbientColor ;
 TYPE_2__** lsurfaceTest ;
 int numDrawSurfaces ;
 int numvsounds ;
 int qtrue ;
 int radiosity ;
 int radiosity_scale ;
 TYPE_1__** vsounds ;

void VS_LightWorld(void)
{
 int i, numcastedvolumes, numvsoundsinsolid;
 float f;


 GetVectorForKey( &entities[0], "_color", lightAmbientColor );
 f = FloatForKey( &entities[0], "ambient" );
 VectorScale( lightAmbientColor, f, lightAmbientColor );
 _printf("%7i lights\n", numvsounds);
 RunThreadsOnIndividual( numvsounds, qtrue, VS_FloodLightThread );

 numcastedvolumes = 0;
 for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
  if (lsurfaceTest[i])
   numcastedvolumes += lsurfaceTest[i]->numvolumes;
 }
 _printf("%7i light volumes casted\n", numcastedvolumes);
 numvsoundsinsolid = 0;
 for (i = 0; i < numvsounds; i++)
 {
  if (vsounds[i]->insolid)
   numvsoundsinsolid++;
 }
 _printf("%7i lights in solid\n", numvsoundsinsolid);

 radiosity_scale = 1;
 for (i = 0; i < radiosity; i++) {
  VS_Radiosity();
  radiosity_scale <<= 1;
 }

 VS_StoreLightmap();

 VS_DoForcedTraceLightSurfaces();
}
