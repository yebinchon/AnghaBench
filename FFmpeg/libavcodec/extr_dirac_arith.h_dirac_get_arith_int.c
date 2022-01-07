
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DiracArith ;


 scalar_t__ dirac_get_arith_bit (int *,int) ;
 int dirac_get_arith_uint (int *,int,int) ;

__attribute__((used)) static inline int dirac_get_arith_int(DiracArith *c, int follow_ctx, int data_ctx)
{
    int ret = dirac_get_arith_uint(c, follow_ctx, data_ctx);
    if (ret && dirac_get_arith_bit(c, data_ctx+1))
        ret = -ret;
    return ret;
}
