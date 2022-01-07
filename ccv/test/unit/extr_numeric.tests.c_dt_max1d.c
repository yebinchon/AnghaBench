
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dt_max_helper (float*,float*,int*,int,int ,int,int ,int,float,float) ;

void dt_max1d(float *src, float *dst, int *ptr, int step, int n,
   float a, float b) {
  dt_max_helper(src, dst, ptr, step, 0, n-1, 0, n-1, a, b);
}
