
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; TYPE_2__* verts; } ;
typedef TYPE_1__ mesh_t ;
struct TYPE_7__ {double* xyz; double* normal; } ;
typedef TYPE_2__ drawVert_t ;


 int FreeMesh (TYPE_1__*) ;
 int VectorNormalize (double*,double*) ;
 void* malloc (int) ;

mesh_t *LinearSubdivideMesh( mesh_t *in ) {
 int i, j;
 mesh_t *out;
 drawVert_t *v1, *v2, *vout;

 out = malloc( sizeof( *out ) );

 out->width = in->width * 2;
 out->height = in->height;
 out->verts = malloc( out->width * out->height * sizeof(*out->verts) );
 for ( j = 0 ; j < in->height ; j++ ) {
  out->verts[ j * out->width + 0 ] = in->verts[ j * in->width + 0 ];
  out->verts[ j * out->width + out->width - 1 ] = in->verts[ j * in->width + in->width - 1 ];
  for ( i = 1 ; i < out->width - 1 ; i+= 2 ) {
   v1 = in->verts + j * in->width + (i >> 1);
   v2 = v1 + 1;
   vout = out->verts + j * out->width + i;

   vout->xyz[0] = 0.75 * v1->xyz[0] + 0.25 * v2->xyz[0];
   vout->xyz[1] = 0.75 * v1->xyz[1] + 0.25 * v2->xyz[1];
   vout->xyz[2] = 0.75 * v1->xyz[2] + 0.25 * v2->xyz[2];

   vout->normal[0] = 0.75 * v1->normal[0] + 0.25 * v2->normal[0];
   vout->normal[1] = 0.75 * v1->normal[1] + 0.25 * v2->normal[1];
   vout->normal[2] = 0.75 * v1->normal[2] + 0.25 * v2->normal[2];

   VectorNormalize( vout->normal, vout->normal );

   vout++;

   vout->xyz[0] = 0.25 * v1->xyz[0] + 0.75 * v2->xyz[0];
   vout->xyz[1] = 0.25 * v1->xyz[1] + 0.75 * v2->xyz[1];
   vout->xyz[2] = 0.25 * v1->xyz[2] + 0.75 * v2->xyz[2];

   vout->normal[0] = 0.25 * v1->normal[0] + 0.75 * v2->normal[0];
   vout->normal[1] = 0.25 * v1->normal[1] + 0.75 * v2->normal[1];
   vout->normal[2] = 0.25 * v1->normal[2] + 0.75 * v2->normal[2];

   VectorNormalize( vout->normal, vout->normal );

  }
 }

 FreeMesh( in );

 return out;
}
