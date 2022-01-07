
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RunThreadsOnIndividual (int ,int ,int ) ;
 int VS_SurfaceRadiosity ;
 int _printf (char*,int ) ;
 int free (float*) ;
 float* lightFloats ;
 scalar_t__ malloc (int) ;
 int memcpy (float*,float*,int) ;
 int numDrawSurfaces ;
 int numLightBytes ;
 float* oldLightFloats ;
 int qtrue ;

void VS_Radiosity(void) {

 oldLightFloats = lightFloats;
 lightFloats = (float *) malloc(numLightBytes * sizeof(float));
 memcpy(lightFloats, oldLightFloats, numLightBytes * sizeof(float));
 _printf("%7i surfaces\n", numDrawSurfaces);
 RunThreadsOnIndividual( numDrawSurfaces, qtrue, VS_SurfaceRadiosity );
 free(oldLightFloats);
}
