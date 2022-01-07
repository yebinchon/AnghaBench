
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int * tlutRegion; } ;
typedef int GXTlutRegion ;


 TYPE_1__* __gx ;

__attribute__((used)) static GXTlutRegion* __GXDefTlutRegionCallback(u32 tlut_name)
{
 return &__gx->tlutRegion[tlut_name];
}
