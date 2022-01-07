
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int avctx; int gb; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int * block_code_nbits ;
 scalar_t__ decode_blockcodes (int,int,int,int *) ;
 int* ff_dca_quant_levels ;
 int get_bits (int *,int ) ;

__attribute__((used)) static inline int parse_block_codes(DCACoreDecoder *s, int32_t *audio, int abits)
{

    int code1 = get_bits(&s->gb, block_code_nbits[abits - 1]);
    int code2 = get_bits(&s->gb, block_code_nbits[abits - 1]);
    int levels = ff_dca_quant_levels[abits];


    if (decode_blockcodes(code1, code2, levels, audio)) {
        av_log(s->avctx, AV_LOG_ERROR, "Failed to decode block code(s)\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
