
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {TYPE_1__* eUp; } ;
struct TYPE_17__ {TYPE_2__* eUp; scalar_t__ fixUpperEdge; } ;
struct TYPE_16__ {int mesh; } ;
struct TYPE_15__ {int Lnext; int * Org; } ;
struct TYPE_14__ {int Sym; } ;
typedef int TESSvertex ;
typedef TYPE_3__ TESStesselator ;
typedef int TESShalfEdge ;
typedef TYPE_4__ ActiveRegion ;


 int FixUpperEdge (TYPE_3__*,TYPE_4__*,int *) ;
 TYPE_4__* RegionAbove (TYPE_4__*) ;
 TYPE_8__* RegionBelow (TYPE_4__*) ;
 int * tessMeshConnect (int ,int ,int ) ;

__attribute__((used)) static ActiveRegion *TopLeftRegion( TESStesselator *tess, ActiveRegion *reg )
{
 TESSvertex *org = reg->eUp->Org;
 TESShalfEdge *e;


 do {
  reg = RegionAbove( reg );
 } while( reg->eUp->Org == org );




 if( reg->fixUpperEdge ) {
  e = tessMeshConnect( tess->mesh, RegionBelow(reg)->eUp->Sym, reg->eUp->Lnext );
  if (e == ((void*)0)) return ((void*)0);
  if ( !FixUpperEdge( tess, reg, e ) ) return ((void*)0);
  reg = RegionAbove( reg );
 }
 return reg;
}
