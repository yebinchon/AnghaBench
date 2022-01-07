
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int node_t ;
struct TYPE_3__ {scalar_t__ firstBrush; scalar_t__ numBrushes; scalar_t__ firstSurface; scalar_t__ numSurfaces; } ;
typedef TYPE_1__ dmodel_t ;


 int EmitDrawNode_r (int *) ;
 TYPE_1__* dmodels ;
 scalar_t__ numDrawSurfaces ;
 scalar_t__ numbrushes ;
 size_t nummodels ;
 int qprintf (char*) ;

void EndModel( node_t *headnode ) {
 dmodel_t *mod;

 qprintf ("--- EndModel ---\n");

 mod = &dmodels[nummodels];
 EmitDrawNode_r (headnode);
 mod->numSurfaces = numDrawSurfaces - mod->firstSurface;
 mod->numBrushes = numbrushes - mod->firstBrush;

 nummodels++;
}
