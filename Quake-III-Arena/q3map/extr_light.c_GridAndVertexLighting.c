
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateEntityLights () ;
 int CreateFilters () ;
 int CreateSurfaceLights () ;
 int FindSkyBrushes () ;
 int InitTrace () ;
 int RunThreadsOnIndividual (int ,int ,int ) ;
 int SetupGrid () ;
 int TraceGrid ;
 int TriSoupLightingThread ;
 int VertexLightingThread ;
 int _printf (char*) ;
 int nogridlighting ;
 int novertexlighting ;
 int numDrawSurfaces ;
 int numGridPoints ;
 int qtrue ;

void GridAndVertexLighting(void) {
 SetupGrid();

 FindSkyBrushes();
 CreateFilters();
 InitTrace();
 CreateEntityLights ();
 CreateSurfaceLights();

 if (!nogridlighting) {
  _printf ("--- TraceGrid ---\n");
  RunThreadsOnIndividual( numGridPoints, qtrue, TraceGrid );
 }

 if (!novertexlighting) {
  _printf ("--- Vertex Lighting ---\n");
  RunThreadsOnIndividual( numDrawSurfaces, qtrue, VertexLightingThread );
 }

 _printf("--- Model Lighting ---\n");
 RunThreadsOnIndividual( numDrawSurfaces, qtrue, TriSoupLightingThread );
}
