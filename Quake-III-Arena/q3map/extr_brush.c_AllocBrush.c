
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * sides; } ;
typedef TYPE_1__ bspbrush_t ;


 int c_active_brushes ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int numthreads ;

bspbrush_t *AllocBrush (int numsides)
{
 bspbrush_t *bb;
 int c;

 c = (int)&(((bspbrush_t *)0)->sides[numsides]);
 bb = malloc(c);
 memset (bb, 0, c);
 if (numthreads == 1)
  c_active_brushes++;
 return bb;
}
