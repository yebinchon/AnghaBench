
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nodeUp; TYPE_1__* eUp; scalar_t__ fixUpperEdge; } ;
struct TYPE_8__ {int regionPool; int dict; } ;
struct TYPE_7__ {scalar_t__ winding; int * activeRegion; } ;
typedef TYPE_2__ TESStesselator ;
typedef TYPE_3__ ActiveRegion ;


 int assert (int) ;
 int bucketFree (int ,TYPE_3__*) ;
 int dictDelete (int ,int ) ;

__attribute__((used)) static void DeleteRegion( TESStesselator *tess, ActiveRegion *reg )
{
 if( reg->fixUpperEdge ) {




  assert( reg->eUp->winding == 0 );
 }
 reg->eUp->activeRegion = ((void*)0);
 dictDelete( tess->dict, reg->nodeUp );
 bucketFree( tess->regionPool, reg );
}
