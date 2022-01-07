
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ c_active_windings ;
 scalar_t__ c_peak_windingmemory ;
 scalar_t__ c_peak_windings ;
 scalar_t__ c_winding_allocs ;
 scalar_t__ c_winding_points ;
 scalar_t__ c_windingmemory ;
 int strcpy (int ,char*) ;
 int windingerror ;

void ResetWindings(void)
{
 c_active_windings = 0;
 c_peak_windings = 0;
 c_winding_allocs = 0;
 c_winding_points = 0;
 c_windingmemory = 0;
 c_peak_windingmemory = 0;

 strcpy(windingerror, "");
}
