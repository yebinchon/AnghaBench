
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float wiimote_normalize_and_interpolate(float min, float max, float t)
{
   if (min == max)
      return 0.0f;
   return (t - min) / (max - min);
}
