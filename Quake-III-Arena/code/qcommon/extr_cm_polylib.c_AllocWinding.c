
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int winding_t ;
typedef int vec_t ;


 int Com_Memset (int *,int ,int) ;
 int * Z_Malloc (int) ;
 scalar_t__ c_active_windings ;
 scalar_t__ c_peak_windings ;
 int c_winding_allocs ;
 int c_winding_points ;

winding_t *AllocWinding (int points)
{
 winding_t *w;
 int s;

 c_winding_allocs++;
 c_winding_points += points;
 c_active_windings++;
 if (c_active_windings > c_peak_windings)
  c_peak_windings = c_active_windings;

 s = sizeof(vec_t)*3*points + sizeof(int);
 w = Z_Malloc (s);
 Com_Memset (w, 0, s);
 return w;
}
