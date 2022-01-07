
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef unsigned int int16_t ;
struct TYPE_5__ {int (* clear_block ) (unsigned int*) ;} ;
struct TYPE_6__ {unsigned int* last_dc; int avctx; TYPE_1__ bdsp; } ;
typedef TYPE_2__ MJpegDecodeContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 unsigned int mjpeg_decode_dc (TYPE_2__*,int) ;
 int stub1 (unsigned int*) ;

__attribute__((used)) static int decode_dc_progressive(MJpegDecodeContext *s, int16_t *block,
                                 int component, int dc_index,
                                 uint16_t *quant_matrix, int Al)
{
    unsigned val;
    s->bdsp.clear_block(block);
    val = mjpeg_decode_dc(s, dc_index);
    if (val == 0xfffff) {
        av_log(s->avctx, AV_LOG_ERROR, "error dc\n");
        return AVERROR_INVALIDDATA;
    }
    val = (val * (quant_matrix[0] << Al)) + s->last_dc[component];
    s->last_dc[component] = val;
    block[0] = val;
    return 0;
}
