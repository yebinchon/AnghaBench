
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateEntityLights () ;
 float FloatForKey (int *,char*) ;
 int GetVectorForKey (int *,char*,int ) ;
 int RunThreadsOnIndividual (int ,int ,int ) ;
 int SetupGrid () ;
 int TraceGrid ;
 int TraceLtm ;
 int VectorScale (int ,float,int ) ;
 int ambientColor ;
 int c_occluded ;
 int c_visible ;
 int * entities ;
 int * gridBounds ;
 int nogridlighting ;
 int numAreaLights ;
 int numDrawSurfaces ;
 int numGridPoints ;
 int numPointLights ;
 int qprintf (char*,...) ;
 int qtrue ;

void LightWorld (void) {
 float f;


 SetupGrid();


 GetVectorForKey( &entities[0], "_color", ambientColor );
 f = FloatForKey( &entities[0], "ambient" );
 VectorScale( ambientColor, f, ambientColor );


 qprintf ("--- CreateLights ---\n");
 CreateEntityLights ();
 qprintf ("%i point lights\n", numPointLights);
 qprintf ("%i area lights\n", numAreaLights);

 if (!nogridlighting) {
  qprintf ("--- TraceGrid ---\n");
  RunThreadsOnIndividual( numGridPoints, qtrue, TraceGrid );
  qprintf( "%i x %i x %i = %i grid\n", gridBounds[0], gridBounds[1],
   gridBounds[2], numGridPoints);
 }

 qprintf ("--- TraceLtm ---\n");
 RunThreadsOnIndividual( numDrawSurfaces, qtrue, TraceLtm );
 qprintf( "%5i visible samples\n", c_visible );
 qprintf( "%5i occluded samples\n", c_occluded );
}
