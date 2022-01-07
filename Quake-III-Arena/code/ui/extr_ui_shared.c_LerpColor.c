
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec4_t ;



void LerpColor(vec4_t a, vec4_t b, vec4_t c, float t)
{
 int i;


 for (i=0; i<4; i++)
 {
  c[i] = a[i] + t*(b[i]-a[i]);
  if (c[i] < 0)
   c[i] = 0;
  else if (c[i] > 1.0)
   c[i] = 1.0;
 }
}
