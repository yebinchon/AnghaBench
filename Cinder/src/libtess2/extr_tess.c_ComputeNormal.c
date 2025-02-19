
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* mesh; } ;
struct TYPE_6__ {scalar_t__* coords; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__ vHead; } ;
typedef TYPE_2__ TESSvertex ;
typedef TYPE_3__ TESStesselator ;
typedef scalar_t__ TESSreal ;


 size_t LongAxis (scalar_t__*) ;

__attribute__((used)) static void ComputeNormal( TESStesselator *tess, TESSreal norm[3] )
{
 TESSvertex *v, *v1, *v2;
 TESSreal c, tLen2, maxLen2;
 TESSreal maxVal[3], minVal[3], d1[3], d2[3], tNorm[3];
 TESSvertex *maxVert[3], *minVert[3];
 TESSvertex *vHead = &tess->mesh->vHead;
 int i;

 v = vHead->next;
 for( i = 0; i < 3; ++i ) {
  c = v->coords[i];
  minVal[i] = c;
  minVert[i] = v;
  maxVal[i] = c;
  maxVert[i] = v;
 }

 for( v = vHead->next; v != vHead; v = v->next ) {
  for( i = 0; i < 3; ++i ) {
   c = v->coords[i];
   if( c < minVal[i] ) { minVal[i] = c; minVert[i] = v; }
   if( c > maxVal[i] ) { maxVal[i] = c; maxVert[i] = v; }
  }
 }




 i = 0;
 if( maxVal[1] - minVal[1] > maxVal[0] - minVal[0] ) { i = 1; }
 if( maxVal[2] - minVal[2] > maxVal[i] - minVal[i] ) { i = 2; }
 if( minVal[i] >= maxVal[i] ) {

  norm[0] = 0; norm[1] = 0; norm[2] = 1;
  return;
 }




 maxLen2 = 0;
 v1 = minVert[i];
 v2 = maxVert[i];
 d1[0] = v1->coords[0] - v2->coords[0];
 d1[1] = v1->coords[1] - v2->coords[1];
 d1[2] = v1->coords[2] - v2->coords[2];
 for( v = vHead->next; v != vHead; v = v->next ) {
  d2[0] = v->coords[0] - v2->coords[0];
  d2[1] = v->coords[1] - v2->coords[1];
  d2[2] = v->coords[2] - v2->coords[2];
  tNorm[0] = d1[1]*d2[2] - d1[2]*d2[1];
  tNorm[1] = d1[2]*d2[0] - d1[0]*d2[2];
  tNorm[2] = d1[0]*d2[1] - d1[1]*d2[0];
  tLen2 = tNorm[0]*tNorm[0] + tNorm[1]*tNorm[1] + tNorm[2]*tNorm[2];
  if( tLen2 > maxLen2 ) {
   maxLen2 = tLen2;
   norm[0] = tNorm[0];
   norm[1] = tNorm[1];
   norm[2] = tNorm[2];
  }
 }

 if( maxLen2 <= 0 ) {

  norm[0] = norm[1] = norm[2] = 0;
  norm[LongAxis(d1)] = 1;
 }
}
