
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long
jround_up (long a, long b)


{
  a += b - 1L;
  return a - (a % b);
}
