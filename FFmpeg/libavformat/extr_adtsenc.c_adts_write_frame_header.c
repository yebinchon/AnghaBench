
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int objecttype; int sample_rate_index; int channel_conf; } ;
typedef int PutBitContext ;
typedef TYPE_1__ ADTSContext ;


 scalar_t__ ADTS_HEADER_SIZE ;
 unsigned int ADTS_MAX_FRAME_BYTES ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,unsigned int,unsigned int) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int *,scalar_t__) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static int adts_write_frame_header(ADTSContext *ctx,
                                   uint8_t *buf, int size, int pce_size)
{
    PutBitContext pb;

    unsigned full_frame_size = (unsigned)ADTS_HEADER_SIZE + size + pce_size;
    if (full_frame_size > ADTS_MAX_FRAME_BYTES) {
        av_log(((void*)0), AV_LOG_ERROR, "ADTS frame size too large: %u (max %d)\n",
               full_frame_size, ADTS_MAX_FRAME_BYTES);
        return AVERROR_INVALIDDATA;
    }

    init_put_bits(&pb, buf, ADTS_HEADER_SIZE);


    put_bits(&pb, 12, 0xfff);
    put_bits(&pb, 1, 0);
    put_bits(&pb, 2, 0);
    put_bits(&pb, 1, 1);
    put_bits(&pb, 2, ctx->objecttype);
    put_bits(&pb, 4, ctx->sample_rate_index);
    put_bits(&pb, 1, 0);
    put_bits(&pb, 3, ctx->channel_conf);
    put_bits(&pb, 1, 0);
    put_bits(&pb, 1, 0);


    put_bits(&pb, 1, 0);
    put_bits(&pb, 1, 0);
    put_bits(&pb, 13, full_frame_size);
    put_bits(&pb, 11, 0x7ff);
    put_bits(&pb, 2, 0);

    flush_put_bits(&pb);

    return 0;
}
