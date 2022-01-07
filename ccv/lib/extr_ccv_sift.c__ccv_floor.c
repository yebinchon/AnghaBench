
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int _ccv_floor(float x)
{
 int xi = (int)x;
 if (x >= 0 || (float)xi == x)
  return xi;
 return xi - 1;
}
