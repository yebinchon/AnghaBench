
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;


 scalar_t__ MUL64 (int const,int const) ;

__attribute__((used)) static inline int64_t calc_corr(const int32_t *x, int len, int j, int k)
{
    int n;
    int64_t s = 0;
    for (n = 0; n < len; n++)
        s += MUL64(x[n-j], x[n-k]);
    return s;
}
