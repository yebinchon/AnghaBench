
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sides; int ** bounds; } ;
typedef TYPE_3__ cbrush_t ;
struct TYPE_6__ {TYPE_1__* plane; } ;
struct TYPE_5__ {int dist; } ;



void CM_BoundBrush( cbrush_t *b ) {
 b->bounds[0][0] = -b->sides[0].plane->dist;
 b->bounds[1][0] = b->sides[1].plane->dist;

 b->bounds[0][1] = -b->sides[2].plane->dist;
 b->bounds[1][1] = b->sides[3].plane->dist;

 b->bounds[0][2] = -b->sides[4].plane->dist;
 b->bounds[1][2] = b->sides[5].plane->dist;
}
