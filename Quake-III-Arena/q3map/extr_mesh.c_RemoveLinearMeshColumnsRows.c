
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_9__ {int width; int height; TYPE_2__* verts; } ;
typedef TYPE_1__ mesh_t ;
struct TYPE_10__ {int xyz; } ;
typedef TYPE_2__ drawVert_t ;


 TYPE_1__* CopyMesh (TYPE_1__*) ;
 int MAX_EXPANDED_AXIS ;
 int ProjectPointOntoVector (int ,int ,int ,int ) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;
 int * originalHeights ;
 int * originalWidths ;

mesh_t *RemoveLinearMeshColumnsRows( mesh_t *in ) {
 int i, j, k;
 float len, maxLength;
 vec3_t proj, dir;
 mesh_t out;
 drawVert_t expand[MAX_EXPANDED_AXIS][MAX_EXPANDED_AXIS];

 out.width = in->width;
 out.height = in->height;

 for ( i = 0 ; i < in->width ; i++ ) {
  for ( j = 0 ; j < in->height ; j++ ) {
   expand[j][i] = in->verts[j*in->width+i];
  }
 }

 for ( j = 1 ; j < out.width - 1; j++ ) {
  maxLength = 0;
  for ( i = 0 ; i < out.height ; i++ ) {
   ProjectPointOntoVector(expand[i][j].xyz, expand[i][j-1].xyz, expand[i][j+1].xyz, proj);
   VectorSubtract(expand[i][j].xyz, proj, dir);
   len = VectorLength(dir);
   if (len > maxLength) {
    maxLength = len;
   }
  }
  if (maxLength < 0.1)
  {
   out.width--;
   for ( i = 0 ; i < out.height ; i++ ) {
    for (k = j; k < out.width; k++) {
     expand[i][k] = expand[i][k+1];
    }
   }
   for (k = j; k < out.width; k++) {
    originalWidths[k] = originalWidths[k+1];
   }
   j--;
  }
 }
 for ( j = 1 ; j < out.height - 1; j++ ) {
  maxLength = 0;
  for ( i = 0 ; i < out.width ; i++ ) {
   ProjectPointOntoVector(expand[j][i].xyz, expand[j-1][i].xyz, expand[j+1][i].xyz, proj);
   VectorSubtract(expand[j][i].xyz, proj, dir);
   len = VectorLength(dir);
   if (len > maxLength) {
    maxLength = len;
   }
  }
  if (maxLength < 0.1)
  {
   out.height--;
   for ( i = 0 ; i < out.width ; i++ ) {
    for (k = j; k < out.height; k++) {
     expand[k][i] = expand[k+1][i];
    }
   }
   for (k = j; k < out.height; k++) {
    originalHeights[k] = originalHeights[k+1];
   }
   j--;
  }
 }

 out.verts = &expand[0][0];
 for ( i = 1 ; i < out.height ; i++ ) {
  memmove( &out.verts[i*out.width], expand[i], out.width * sizeof(drawVert_t) );
 }

 return CopyMesh(&out);
}
