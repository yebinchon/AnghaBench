
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ trace_enable; int log_ctx; } ;
typedef int GetBitContext ;
typedef TYPE_1__ CodedBitstreamContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_assert0 (int) ;
 int av_log (int ,int ,char*,char const*) ;
 int ff_cbs_trace_syntax_element (TYPE_1__*,int,char const*,int const*,char*,int) ;
 int get_bits (int *,int) ;
 int get_bits_count (int *) ;
 int get_bits_left (int *) ;

__attribute__((used)) static int cbs_vp9_read_le(CodedBitstreamContext *ctx, GetBitContext *gbc,
                           int width, const char *name,
                           const int *subscripts, uint32_t *write_to)
{
    uint32_t value;
    int position, b;

    av_assert0(width % 8 == 0);

    if (ctx->trace_enable)
        position = get_bits_count(gbc);

    if (get_bits_left(gbc) < width) {
        av_log(ctx->log_ctx, AV_LOG_ERROR, "Invalid le value at "
               "%s: bitstream ended.\n", name);
        return AVERROR_INVALIDDATA;
    }

    value = 0;
    for (b = 0; b < width; b += 8)
        value |= get_bits(gbc, 8) << b;

    if (ctx->trace_enable) {
        char bits[33];
        int i;
        for (b = 0; b < width; b += 8)
            for (i = 0; i < 8; i++)
                bits[b + i] = value >> (b + i) & 1 ? '1' : '0';
        bits[b] = 0;

        ff_cbs_trace_syntax_element(ctx, position, name, subscripts,
                                    bits, value);
    }

    *write_to = value;
    return 0;
}
