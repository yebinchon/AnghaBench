
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sum_array (float*,int) ;

float mean_array(float *a, int n)
{
    return sum_array(a,n)/n;
}
