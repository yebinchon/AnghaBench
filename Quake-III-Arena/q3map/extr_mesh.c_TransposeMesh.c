
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; int * verts; } ;
typedef TYPE_1__ mesh_t ;
typedef int drawVert_t ;


 int FreeMesh (TYPE_1__*) ;
 void* malloc (int) ;

mesh_t *TransposeMesh( mesh_t *in ) {
 int w, h;
 mesh_t *out;

 out = malloc( sizeof( *out ) );
 out->width = in->height;
 out->height = in->width;
 out->verts = malloc( out->width * out->height * sizeof( drawVert_t ) );

 for ( h = 0 ; h < in->height ; h++ ) {
  for ( w = 0 ; w < in->width ; w++ ) {
   out->verts[ w * in->height + h ] = in->verts[ h * in->width + w ];
  }
 }

 FreeMesh( in );

 return out;
}
