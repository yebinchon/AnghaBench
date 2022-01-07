
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int origin; int frame; } ;
struct TYPE_13__ {TYPE_2__ e; } ;
typedef TYPE_4__ trRefEntity_t ;
struct TYPE_14__ {int * bounds; } ;
typedef TYPE_5__ md3Frame_t ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {float value; } ;
struct TYPE_15__ {TYPE_3__* currentModel; } ;
struct TYPE_12__ {int numLods; TYPE_1__** md3; } ;
struct TYPE_10__ {int ofsFrames; } ;


 float ProjectRadius (float,int ) ;
 float RadiusFromBounds (int ,int ) ;
 int myftol (float) ;
 TYPE_8__* r_lodbias ;
 TYPE_7__* r_lodscale ;
 TYPE_6__ tr ;

int R_ComputeLOD( trRefEntity_t *ent ) {
 float radius;
 float flod, lodscale;
 float projectedRadius;
 md3Frame_t *frame;
 int lod;

 if ( tr.currentModel->numLods < 2 )
 {

  lod = 0;
 }
 else
 {



  frame = ( md3Frame_t * ) ( ( ( unsigned char * ) tr.currentModel->md3[0] ) + tr.currentModel->md3[0]->ofsFrames );

  frame += ent->e.frame;

  radius = RadiusFromBounds( frame->bounds[0], frame->bounds[1] );

  if ( ( projectedRadius = ProjectRadius( radius, ent->e.origin ) ) != 0 )
  {
   lodscale = r_lodscale->value;
   if (lodscale > 20) lodscale = 20;
   flod = 1.0f - projectedRadius * lodscale;
  }
  else
  {

   flod = 0;
  }

  flod *= tr.currentModel->numLods;
  lod = myftol( flod );

  if ( lod < 0 )
  {
   lod = 0;
  }
  else if ( lod >= tr.currentModel->numLods )
  {
   lod = tr.currentModel->numLods - 1;
  }
 }

 lod += r_lodbias->integer;

 if ( lod >= tr.currentModel->numLods )
  lod = tr.currentModel->numLods - 1;
 if ( lod < 0 )
  lod = 0;

 return lod;
}
