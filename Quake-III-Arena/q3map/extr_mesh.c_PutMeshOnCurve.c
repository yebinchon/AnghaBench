
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; TYPE_1__* verts; } ;
typedef TYPE_2__ mesh_t ;
struct TYPE_4__ {double* xyz; } ;



void PutMeshOnCurve( mesh_t in ) {
 int i, j, l;
 float prev, next;


 for ( i = 0 ; i < in.width ; i++ ) {
  for ( j = 1 ; j < in.height ; j += 2 ) {
   for ( l = 0 ; l < 3 ; l++ ) {
    prev = ( in.verts[j*in.width+i].xyz[l] + in.verts[(j+1)*in.width+i].xyz[l] ) * 0.5;
    next = ( in.verts[j*in.width+i].xyz[l] + in.verts[(j-1)*in.width+i].xyz[l] ) * 0.5;
    in.verts[j*in.width+i].xyz[l] = ( prev + next ) * 0.5;
   }
  }
 }

 for ( j = 0 ; j < in.height ; j++ ) {
  for ( i = 1 ; i < in.width ; i += 2 ) {
   for ( l = 0 ; l < 3 ; l++ ) {
    prev = ( in.verts[j*in.width+i].xyz[l] + in.verts[j*in.width+i+1].xyz[l] ) * 0.5;
    next = ( in.verts[j*in.width+i].xyz[l] + in.verts[j*in.width+i-1].xyz[l] ) * 0.5;
    in.verts[j*in.width+i].xyz[l] = ( prev + next ) * 0.5;
   }
  }
 }
}
