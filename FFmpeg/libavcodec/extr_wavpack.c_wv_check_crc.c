
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ CRC; scalar_t__ crc_extra_bits; int avctx; scalar_t__ got_extra_bits; } ;
typedef TYPE_1__ WavpackFrameContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static inline int wv_check_crc(WavpackFrameContext *s, uint32_t crc,
                               uint32_t crc_extra_bits)
{
    if (crc != s->CRC) {
        av_log(s->avctx, AV_LOG_ERROR, "CRC error\n");
        return AVERROR_INVALIDDATA;
    }
    if (s->got_extra_bits && crc_extra_bits != s->crc_extra_bits) {
        av_log(s->avctx, AV_LOG_ERROR, "Extra bits CRC error\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
