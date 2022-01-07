
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_10__ {scalar_t__ numbrushes; scalar_t__ firstbrush; } ;
typedef TYPE_2__ entity_t ;


 int AAS_CreateAreaSettings () ;
 int AAS_CreateAreas (int ) ;
 int AAS_FlipSharedFaces () ;
 int AAS_FreeTmpAAS () ;
 int AAS_GravitationalSubdivision () ;
 int AAS_InitTmpAAS () ;
 int AAS_LadderSubdivision () ;
 int AAS_MeltAreaFaceWindings () ;
 int AAS_MergeAreaFaces () ;
 int AAS_MergeAreaPlaneFaces () ;
 int AAS_MergeAreas () ;
 int AAS_PruneNodes () ;
 int AAS_RemoveAreaFaceColinearPoints () ;
 int AAS_RemoveTinyFaces () ;
 int AAS_StoreFile (char*) ;
 int Error (char*) ;
 int FillOutside (int ) ;
 scalar_t__ FloodEntities (TYPE_1__*) ;
 double I_FloatTime () ;
 int LeakFile (TYPE_1__*) ;
 int Log_Print (char*,double) ;
 int MakeTreePortals (TYPE_1__*) ;
 TYPE_1__* ProcessWorldBrushes (scalar_t__,scalar_t__) ;
 int StripExtension (int ) ;
 int ThreadSetDefault () ;
 int Tree_Free (TYPE_1__*) ;
 int Tree_PruneNodes (int ) ;
 scalar_t__ cancelconversion ;
 TYPE_2__* entities ;
 size_t entity_num ;
 scalar_t__ freetree ;
 int source ;
 int strcpy (int ,char*) ;

void AAS_Create(char *aasfile)
{
 entity_t *e;
 tree_t *tree;
 double start_time;


 strcpy(source, aasfile);
 StripExtension(source);

 start_time = I_FloatTime();

 ThreadSetDefault();

 entity_num = 0;

 e = &entities[entity_num];

 tree = ProcessWorldBrushes(e->firstbrush, e->firstbrush + e->numbrushes);

 if (cancelconversion)
 {
  Tree_Free(tree);
  return;
 }

 Log_Print("BSP tree created in %5.0f seconds\n", I_FloatTime() - start_time);

 Tree_PruneNodes(tree->headnode);

 if (cancelconversion)
 {
  Tree_Free(tree);
  return;
 }

 MakeTreePortals(tree);

 if (cancelconversion)
 {
  Tree_Free(tree);
  return;
 }

 if (FloodEntities(tree))
 {

  FillOutside(tree->headnode);
 }
 else
 {
  LeakFile(tree);
  Error("**** leaked ****\n");
  return;
 }



 AAS_InitTmpAAS();

 AAS_CreateAreas(tree->headnode);

 if (freetree) Tree_Free(tree);

 AAS_MergeAreaFaces();

 AAS_GravitationalSubdivision();

 AAS_MergeAreaFaces();
 AAS_RemoveAreaFaceColinearPoints();

 AAS_MergeAreas();

 AAS_PruneNodes();

 AAS_FlipSharedFaces();
 AAS_RemoveAreaFaceColinearPoints();

 AAS_MergeAreaFaces();

 AAS_MergeAreaPlaneFaces();

 AAS_LadderSubdivision();

 AAS_MeltAreaFaceWindings();

 AAS_RemoveTinyFaces();

 AAS_CreateAreaSettings();






 if (cancelconversion)
 {
  Tree_Free(tree);
  AAS_FreeTmpAAS();
  return;
 }

 AAS_StoreFile(aasfile);

 AAS_FreeTmpAAS();

 Log_Print("\nAAS created in %5.0f seconds\n", I_FloatTime() - start_time);
}
