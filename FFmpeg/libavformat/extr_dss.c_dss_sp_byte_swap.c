
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int swap; int dss_sp_swap_byte; } ;
typedef TYPE_1__ DSSDemuxContext ;


 int DSS_FRAME_SIZE ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static void dss_sp_byte_swap(DSSDemuxContext *ctx,
                             uint8_t *dst, const uint8_t *src)
{
    int i;

    if (ctx->swap) {
        for (i = 3; i < DSS_FRAME_SIZE; i += 2)
            dst[i] = src[i];

        for (i = 0; i < DSS_FRAME_SIZE - 2; i += 2)
            dst[i] = src[i + 4];

        dst[1] = ctx->dss_sp_swap_byte;
    } else {
        memcpy(dst, src, DSS_FRAME_SIZE);
        ctx->dss_sp_swap_byte = src[DSS_FRAME_SIZE - 2];
    }


    dst[DSS_FRAME_SIZE - 2] = 0;
    ctx->swap ^= 1;
}
