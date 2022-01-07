
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * sides; } ;
typedef TYPE_1__ bspbrush_t ;


 TYPE_1__* GetMemory (int) ;
 scalar_t__ MemorySize (TYPE_1__*) ;
 int c_active_brushes ;
 scalar_t__ c_brushmemory ;
 scalar_t__ c_peak_brushmemory ;
 int memset (TYPE_1__*,int ,int) ;
 int numthreads ;

bspbrush_t *AllocBrush (int numsides)
{
 bspbrush_t *bb;
 int c;

 c = (int)&(((bspbrush_t *)0)->sides[numsides]);
 bb = GetMemory(c);
 memset (bb, 0, c);
 if (numthreads == 1)
 {
  c_active_brushes++;
  c_brushmemory += MemorySize(bb);
  if (c_brushmemory > c_peak_brushmemory)
    c_peak_brushmemory = c_brushmemory;
 }
 return bb;
}
