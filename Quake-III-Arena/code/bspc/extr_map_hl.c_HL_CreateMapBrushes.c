
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int entity_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_1__ bspbrush_t ;


 int FreeBrush (TYPE_1__*) ;
 int HL_BSPBrushToMapBrush (TYPE_1__*,int *) ;
 TYPE_1__* HL_CreateBrushesFromBSP (int) ;
 int HL_FixContentsTextures (TYPE_1__*) ;
 TYPE_1__* HL_MergeBrushes (TYPE_1__*,int) ;
 TYPE_1__* HL_TextureBrushes (TYPE_1__*,int) ;
 int nobrushmerge ;
 int qprintf (char*,...) ;

void HL_CreateMapBrushes(entity_t *mapent, int modelnum)
{
 bspbrush_t *brushlist, *brush, *nextbrush;
 int i;


 brushlist = HL_CreateBrushesFromBSP(modelnum);

 brushlist = HL_TextureBrushes(brushlist, modelnum);

 HL_FixContentsTextures(brushlist);

 if (!nobrushmerge)
 {
  brushlist = HL_MergeBrushes(brushlist, modelnum);

 }

 if (!modelnum) qprintf("converting brushes to map brushes\n");
 if (!modelnum) qprintf("%5d brushes", i = 0);
 for (brush = brushlist; brush; brush = nextbrush)
 {
  nextbrush = brush->next;
  HL_BSPBrushToMapBrush(brush, mapent);
  brush->next = ((void*)0);
  FreeBrush(brush);
  if (!modelnum) qprintf("\r%5d", ++i);
 }
 if (!modelnum) qprintf("\n");
}
