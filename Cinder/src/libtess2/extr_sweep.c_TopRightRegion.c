
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* eUp; } ;
struct TYPE_7__ {int * Dst; } ;
typedef int TESSvertex ;
typedef TYPE_2__ ActiveRegion ;


 TYPE_2__* RegionAbove (TYPE_2__*) ;

__attribute__((used)) static ActiveRegion *TopRightRegion( ActiveRegion *reg )
{
 TESSvertex *dst = reg->eUp->Dst;


 do {
  reg = RegionAbove( reg );
 } while( reg->eUp->Dst == dst );
 return reg;
}
