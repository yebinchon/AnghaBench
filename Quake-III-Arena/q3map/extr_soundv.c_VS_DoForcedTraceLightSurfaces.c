
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RunThreadsOnIndividual (int ,int ,int ) ;
 int VS_DoForcedTraceLight ;
 int _printf (char*) ;
 int numDrawSurfaces ;
 int qtrue ;

void VS_DoForcedTraceLightSurfaces(void)
{
 _printf( "forced trace light\n" );
 RunThreadsOnIndividual( numDrawSurfaces, qtrue, VS_DoForcedTraceLight );
}
