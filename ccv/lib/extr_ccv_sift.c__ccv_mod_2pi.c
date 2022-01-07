
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCV_PI ;

__attribute__((used)) static float _ccv_mod_2pi(float x)
{
 while (x > 2 * CCV_PI)
  x -= 2 * CCV_PI;
 while (x < 0)
  x += 2 * CCV_PI;
 return x;
}
