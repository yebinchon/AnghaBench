
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;



UINT Power(UINT a, UINT b)
{
 UINT ret, i;
 if (a == 0)
 {
  return 0;
 }
 if (b == 0)
 {
  return 1;
 }

 ret = 1;
 for (i = 0;i < b;i++)
 {
  ret *= a;
 }

 return ret;
}
