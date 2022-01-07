
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float pow (float,int) ;

__attribute__((used)) static float easing_in_quint(float t, float b, float c, float d)
{
   return c * pow(t / d, 5) + b;
}
