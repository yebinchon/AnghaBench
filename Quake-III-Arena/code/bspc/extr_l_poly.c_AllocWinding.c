
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int winding_t ;
typedef int vec_t ;


 int * GetMemory (int) ;
 scalar_t__ MemorySize (int *) ;
 scalar_t__ c_active_windings ;
 scalar_t__ c_peak_windingmemory ;
 scalar_t__ c_peak_windings ;
 int c_winding_allocs ;
 int c_winding_points ;
 scalar_t__ c_windingmemory ;
 int memset (int *,int ,int) ;
 int numthreads ;

winding_t *AllocWinding (int points)
{
 winding_t *w;
 int s;

 s = sizeof(vec_t)*3*points + sizeof(int);
 w = GetMemory(s);
 memset(w, 0, s);

 if (numthreads == 1)
 {
  c_winding_allocs++;
  c_winding_points += points;
  c_active_windings++;
  if (c_active_windings > c_peak_windings)
   c_peak_windings = c_active_windings;
  c_windingmemory += MemorySize(w);
  if (c_windingmemory > c_peak_windingmemory)
   c_peak_windingmemory = c_windingmemory;
 }
 return w;
}
