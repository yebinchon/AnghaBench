
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RunThreadsOnIndividual (int ,int ,int ) ;
 int VL_DoForcedTraceLight ;
 int _printf (char*) ;
 int numDrawSurfaces ;
 int qtrue ;

void VL_DoForcedTraceLightSurfaces(void)
{
 _printf( "forced trace light\n" );
 RunThreadsOnIndividual( numDrawSurfaces, qtrue, VL_DoForcedTraceLight );
}
