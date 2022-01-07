
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_9__ {int texinfo; } ;


 int SplitBrush (TYPE_2__*,int,TYPE_2__**,TYPE_2__**) ;

void SplitBrush2 (bspbrush_t *brush, int planenum,
 bspbrush_t **front, bspbrush_t **back)
{
 SplitBrush (brush, planenum, front, back);






}
