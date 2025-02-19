
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__** meshBounds; int* dlightBits; } ;
typedef TYPE_3__ srfGridMesh_t ;
struct TYPE_10__ {scalar_t__* origin; scalar_t__ radius; } ;
typedef TYPE_4__ dlight_t ;
struct TYPE_8__ {int c_dlightSurfacesCulled; } ;
struct TYPE_7__ {int num_dlights; TYPE_4__* dlights; } ;
struct TYPE_11__ {size_t smpFrame; TYPE_2__ pc; TYPE_1__ refdef; } ;


 TYPE_5__ tr ;

__attribute__((used)) static int R_DlightGrid( srfGridMesh_t *grid, int dlightBits ) {
 int i;
 dlight_t *dl;

 for ( i = 0 ; i < tr.refdef.num_dlights ; i++ ) {
  if ( ! ( dlightBits & ( 1 << i ) ) ) {
   continue;
  }
  dl = &tr.refdef.dlights[i];
  if ( dl->origin[0] - dl->radius > grid->meshBounds[1][0]
   || dl->origin[0] + dl->radius < grid->meshBounds[0][0]
   || dl->origin[1] - dl->radius > grid->meshBounds[1][1]
   || dl->origin[1] + dl->radius < grid->meshBounds[0][1]
   || dl->origin[2] - dl->radius > grid->meshBounds[1][2]
   || dl->origin[2] + dl->radius < grid->meshBounds[0][2] ) {

   dlightBits &= ~( 1 << i );
  }
 }

 if ( !dlightBits ) {
  tr.pc.c_dlightSurfacesCulled++;
 }

 grid->dlightBits[ tr.smpFrame ] = dlightBits;
 return dlightBits;
}
