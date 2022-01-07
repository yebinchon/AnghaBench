
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* slice_offset; scalar_t__ slice_count; } ;
typedef TYPE_1__ AVCodecContext ;


 int AV_RL32 (int const*) ;

__attribute__((used)) static int get_slice_offset(AVCodecContext *avctx, const uint8_t *buf, int n)
{
    if (avctx->slice_count)
        return avctx->slice_offset[n];
    else
        return AV_RL32(buf + n * 8);
}
