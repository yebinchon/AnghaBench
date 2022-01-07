
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_6__ {scalar_t__ winding; } ;


 int FreeMemory (TYPE_2__*) ;
 int FreeWinding (scalar_t__) ;
 scalar_t__ MemorySize (TYPE_2__*) ;
 int c_active_brushes ;
 scalar_t__ c_brushmemory ;
 int numthreads ;

void FreeBrush (bspbrush_t *brushes)
{
 int i;

 for (i=0 ; i<brushes->numsides ; i++)
  if (brushes->sides[i].winding)
   FreeWinding(brushes->sides[i].winding);
 if (numthreads == 1)
 {
  c_active_brushes--;
  c_brushmemory -= MemorySize(brushes);
  if (c_brushmemory < 0) c_brushmemory = 0;
 }
 FreeMemory(brushes);
}
