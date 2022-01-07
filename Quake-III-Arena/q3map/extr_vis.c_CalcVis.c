
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BasePortalVis ;
 int CalcFastVis () ;
 int CalcPassagePortalVis () ;
 int CalcPassageVis () ;
 int CalcPortalVis () ;
 int ClusterMerge (int) ;
 int RunThreadsOnIndividual (int,int ,int ) ;
 int SortPortals () ;
 int _printf (char*,...) ;
 scalar_t__ fastvis ;
 scalar_t__ noPassageVis ;
 int numportals ;
 scalar_t__ passageVisOnly ;
 int portalclusters ;
 int qtrue ;
 int totalvis ;

void CalcVis (void)
{
 int i;

 RunThreadsOnIndividual (numportals*2, qtrue, BasePortalVis);



 SortPortals ();

 if (fastvis) {
  CalcFastVis();
 }
 else if ( noPassageVis ) {
  CalcPortalVis();
 }
 else if ( passageVisOnly ) {
  CalcPassageVis();
 }
 else {
  CalcPassagePortalVis();
 }



 _printf("creating leaf vis...\n");
 for (i=0 ; i<portalclusters ; i++)
  ClusterMerge (i);

 _printf( "Total visible clusters: %i\n", totalvis );
 _printf( "Average clusters visible: %i\n", totalvis / portalclusters );
}
