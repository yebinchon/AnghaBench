
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float easing_linear(float t, float b, float c, float d)
{
   return c * t / d + b;
}
