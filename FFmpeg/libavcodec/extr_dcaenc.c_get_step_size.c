
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int bitrate_index; size_t** abits; } ;
typedef TYPE_1__ DCAEncContext ;


 int * ff_dca_lossless_quant ;
 int * ff_dca_lossy_quant ;

__attribute__((used)) static inline int32_t get_step_size(DCAEncContext *c, int ch, int band)
{
    int32_t step_size;

    if (c->bitrate_index == 3)
        step_size = ff_dca_lossless_quant[c->abits[ch][band]];
    else
        step_size = ff_dca_lossy_quant[c->abits[ch][band]];

    return step_size;
}
