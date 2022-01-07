
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int surf; void* contents; scalar_t__ texinfo; } ;
typedef TYPE_1__ side_t ;
struct TYPE_5__ {int numsides; TYPE_1__* original_sides; void* contents; } ;
typedef TYPE_2__ mapbrush_t ;


 void* CONTENTS_AREAPORTAL ;
 int SURF_HINT ;
 int SURF_SKIP ;

void MakeAreaPortalBrush(mapbrush_t *brush)
{
 int sn;
 side_t *s;

 brush->contents = CONTENTS_AREAPORTAL;

 for (sn = 0; sn < brush->numsides; sn++)
 {
  s = brush->original_sides + sn;

  s->surf &= ~(SURF_HINT|SURF_SKIP);

  s->texinfo = 0;
  s->contents = CONTENTS_AREAPORTAL;
 }
}
