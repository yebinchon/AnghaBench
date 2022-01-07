
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int max_codes_bits; size_t current_codes_count; TYPE_1__* codes; int avctx; } ;
struct TYPE_4__ {int code; int size; } ;
typedef TYPE_2__ MotionPixelsContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 size_t MAX_HUFF_CODES ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static int mp_get_code(MotionPixelsContext *mp, GetBitContext *gb, int size, int code)
{
    while (get_bits1(gb)) {
        ++size;
        if (size > mp->max_codes_bits) {
            av_log(mp->avctx, AV_LOG_ERROR, "invalid code size %d/%d\n", size, mp->max_codes_bits);
            return AVERROR_INVALIDDATA;
        }
        code <<= 1;
        if (mp_get_code(mp, gb, size, code + 1) < 0)
            return AVERROR_INVALIDDATA;
    }
    if (mp->current_codes_count >= MAX_HUFF_CODES) {
        av_log(mp->avctx, AV_LOG_ERROR, "too many codes\n");
        return AVERROR_INVALIDDATA;
    }

    mp->codes[mp->current_codes_count ].code = code;
    mp->codes[mp->current_codes_count++].size = size;
    return 0;
}
