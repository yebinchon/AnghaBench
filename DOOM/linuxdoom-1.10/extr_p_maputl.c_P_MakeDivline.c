
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dy; int dx; TYPE_1__* v1; } ;
typedef TYPE_2__ line_t ;
struct TYPE_8__ {int dy; int dx; int y; int x; } ;
typedef TYPE_3__ divline_t ;
struct TYPE_6__ {int y; int x; } ;



void
P_MakeDivline
( line_t* li,
  divline_t* dl )
{
    dl->x = li->v1->x;
    dl->y = li->v1->y;
    dl->dx = li->dx;
    dl->dy = li->dy;
}
