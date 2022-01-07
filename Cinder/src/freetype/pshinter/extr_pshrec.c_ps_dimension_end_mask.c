
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_masks; scalar_t__ masks; } ;
struct TYPE_7__ {TYPE_1__ masks; } ;
struct TYPE_6__ {scalar_t__ end_point; } ;
typedef TYPE_2__* PS_Mask ;
typedef TYPE_3__* PS_Dimension ;
typedef scalar_t__ FT_UInt ;



__attribute__((used)) static void
  ps_dimension_end_mask( PS_Dimension dim,
                         FT_UInt end_point )
  {
    FT_UInt count = dim->masks.num_masks;


    if ( count > 0 )
    {
      PS_Mask mask = dim->masks.masks + count - 1;


      mask->end_point = end_point;
    }
  }
