
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long fixed_t ;


 long long FRACBITS ;

fixed_t
FixedMul
( fixed_t a,
  fixed_t b )
{
    return ((long long) a * (long long) b) >> FRACBITS;
}
