
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;



UINT64 Diff64(UINT64 a, UINT64 b)
{
 if (a > b)
 {
  return a - b;
 }
 else
 {
  return b - a;
 }
}
