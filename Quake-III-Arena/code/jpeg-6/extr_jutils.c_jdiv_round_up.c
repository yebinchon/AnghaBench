
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long
jdiv_round_up (long a, long b)


{
  return (a + b - 1L) / b;
}
