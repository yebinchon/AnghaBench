
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** lines; } ;
struct TYPE_3__ {int flags; } ;


 int ML_TWOSIDED ;
 TYPE_2__* sectors ;

int
twoSided
( int sector,
  int line )
{
    return (sectors[sector].lines[line])->flags & ML_TWOSIDED;
}
