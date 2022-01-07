
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ trace_enable; int log_ctx; } ;
typedef int GetBitContext ;
typedef TYPE_1__ CodedBitstreamContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,char const*) ;
 int ff_cbs_trace_syntax_element (TYPE_1__*,int,char const*,int const*,char*,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 int get_bits_left (int *) ;

__attribute__((used)) static int cbs_vp9_read_s(CodedBitstreamContext *ctx, GetBitContext *gbc,
                          int width, const char *name,
                          const int *subscripts, int32_t *write_to)
{
    uint32_t magnitude;
    int position, sign;
    int32_t value;

    if (ctx->trace_enable)
        position = get_bits_count(gbc);

    if (get_bits_left(gbc) < width + 1) {
        av_log(ctx->log_ctx, AV_LOG_ERROR, "Invalid signed value at "
               "%s: bitstream ended.\n", name);
        return AVERROR_INVALIDDATA;
    }

    magnitude = get_bits(gbc, width);
    sign = get_bits1(gbc);
    value = sign ? -(int32_t)magnitude : magnitude;

    if (ctx->trace_enable) {
        char bits[33];
        int i;
        for (i = 0; i < width; i++)
            bits[i] = magnitude >> (width - i - 1) & 1 ? '1' : '0';
        bits[i] = sign ? '1' : '0';
        bits[i + 1] = 0;

        ff_cbs_trace_syntax_element(ctx, position, name, subscripts,
                                    bits, value);
    }

    *write_to = value;
    return 0;
}
