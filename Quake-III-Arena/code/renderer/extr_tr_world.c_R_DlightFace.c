
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {float dist; int normal; } ;
struct TYPE_11__ {int* dlightBits; TYPE_2__ plane; } ;
typedef TYPE_4__ srfSurfaceFace_t ;
struct TYPE_12__ {float radius; int origin; } ;
typedef TYPE_5__ dlight_t ;
struct TYPE_10__ {int c_dlightSurfacesCulled; } ;
struct TYPE_8__ {int num_dlights; TYPE_5__* dlights; } ;
struct TYPE_13__ {size_t smpFrame; TYPE_3__ pc; TYPE_1__ refdef; } ;


 float DotProduct (int ,int ) ;
 TYPE_6__ tr ;

__attribute__((used)) static int R_DlightFace( srfSurfaceFace_t *face, int dlightBits ) {
 float d;
 int i;
 dlight_t *dl;

 for ( i = 0 ; i < tr.refdef.num_dlights ; i++ ) {
  if ( ! ( dlightBits & ( 1 << i ) ) ) {
   continue;
  }
  dl = &tr.refdef.dlights[i];
  d = DotProduct( dl->origin, face->plane.normal ) - face->plane.dist;
  if ( d < -dl->radius || d > dl->radius ) {

   dlightBits &= ~( 1 << i );
  }
 }

 if ( !dlightBits ) {
  tr.pc.c_dlightSurfacesCulled++;
 }

 face->dlightBits[ tr.smpFrame ] = dlightBits;
 return dlightBits;
}
