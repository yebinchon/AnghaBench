
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long int64_t ;


 long long MUL64 (int,int ) ;
 int* scale_factor_modshift ;
 int ** scale_factor_mult ;

__attribute__((used)) static inline int l1_unscale(int n, int mant, int scale_factor)
{
    int shift, mod;
    int64_t val;

    shift = scale_factor_modshift[scale_factor];
    mod = shift & 3;
    shift >>= 2;
    val = MUL64((int)(mant + (-1U << n) + 1), scale_factor_mult[n-1][mod]);
    shift += n;

    return (int)((val + (1LL << (shift - 1))) >> shift);
}
