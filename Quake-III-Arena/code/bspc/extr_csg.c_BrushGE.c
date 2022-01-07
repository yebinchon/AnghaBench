
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {TYPE_1__* original; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_5__ {scalar_t__ expansionbbox; int contents; } ;


 int CONTENTS_DETAIL ;
 int CONTENTS_LADDER ;
 int CONTENTS_SOLID ;
 scalar_t__ create_aas ;

qboolean BrushGE (bspbrush_t *b1, bspbrush_t *b2)
{
 if ( (b1->original->contents & CONTENTS_DETAIL)
  && !(b2->original->contents & CONTENTS_DETAIL) )
 {
  return 0;
 }
 if (b1->original->contents & CONTENTS_SOLID)
 {
  return 1;
 }
 return 0;
}
