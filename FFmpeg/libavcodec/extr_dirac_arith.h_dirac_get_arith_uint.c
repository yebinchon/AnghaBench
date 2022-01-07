
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; } ;
typedef TYPE_1__ DiracArith ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 scalar_t__ dirac_get_arith_bit (TYPE_1__*,int) ;
 int* ff_dirac_next_ctx ;

__attribute__((used)) static inline int dirac_get_arith_uint(DiracArith *c, int follow_ctx, int data_ctx)
{
    int ret = 1;
    while (!dirac_get_arith_bit(c, follow_ctx)) {
        if (ret >= 0x40000000) {
            av_log(((void*)0), AV_LOG_ERROR, "dirac_get_arith_uint overflow\n");
            c->error = AVERROR_INVALIDDATA;
            return -1;
        }
        ret <<= 1;
        ret += dirac_get_arith_bit(c, data_ctx);
        follow_ctx = ff_dirac_next_ctx[follow_ctx];
    }
    return ret-1;
}
