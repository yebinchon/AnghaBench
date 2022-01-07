
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** sky_maxs ;
 int** sky_mins ;

__attribute__((used)) static void ClearSkyBox (void) {
 int i;

 for (i=0 ; i<6 ; i++) {
  sky_mins[0][i] = sky_mins[1][i] = 9999;
  sky_maxs[0][i] = sky_maxs[1][i] = -9999;
 }
}
