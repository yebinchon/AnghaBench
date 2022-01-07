
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; scalar_t__* on; } ;
struct TYPE_4__ {TYPE_3__ n; int p; } ;
typedef TYPE_1__ st_percent_t ;


 int FG ;
 int STlib_updateNum (TYPE_3__*,int) ;
 int V_DrawPatch (int ,int ,int ,int ) ;

void
STlib_updatePercent
( st_percent_t* per,
  int refresh )
{
    if (refresh && *per->n.on)
 V_DrawPatch(per->n.x, per->n.y, FG, per->p);

    STlib_updateNum(&per->n, refresh);
}
