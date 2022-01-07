
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ windingNumber; } ;
struct TYPE_7__ {scalar_t__ windingNumber; int inside; TYPE_1__* eUp; } ;
struct TYPE_6__ {scalar_t__ winding; } ;
typedef int TESStesselator ;
typedef TYPE_2__ ActiveRegion ;


 int IsWindingInside (int *,scalar_t__) ;
 TYPE_3__* RegionAbove (TYPE_2__*) ;

__attribute__((used)) static void ComputeWinding( TESStesselator *tess, ActiveRegion *reg )
{
 reg->windingNumber = RegionAbove(reg)->windingNumber + reg->eUp->winding;
 reg->inside = IsWindingInside( tess, reg->windingNumber );
}
