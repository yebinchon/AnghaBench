
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ trace_enable; int log_ctx; } ;
typedef int GetBitContext ;
typedef TYPE_1__ CodedBitstreamContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_assert0 (int) ;
 int av_log (int ,int ,char*,char const*) ;
 int av_log2 (scalar_t__) ;
 int ff_cbs_trace_syntax_element (TYPE_1__*,int,char const*,int const*,char*,scalar_t__) ;
 scalar_t__ get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_count (int *) ;
 int get_bits_left (int *) ;

__attribute__((used)) static int cbs_av1_read_ns(CodedBitstreamContext *ctx, GetBitContext *gbc,
                           uint32_t n, const char *name,
                           const int *subscripts, uint32_t *write_to)
{
    uint32_t m, v, extra_bit, value;
    int position, w;

    av_assert0(n > 0);

    if (ctx->trace_enable)
        position = get_bits_count(gbc);

    w = av_log2(n) + 1;
    m = (1 << w) - n;

    if (get_bits_left(gbc) < w) {
        av_log(ctx->log_ctx, AV_LOG_ERROR, "Invalid non-symmetric value at "
               "%s: bitstream ended.\n", name);
        return AVERROR_INVALIDDATA;
    }

    if (w - 1 > 0)
        v = get_bits(gbc, w - 1);
    else
        v = 0;

    if (v < m) {
        value = v;
    } else {
        extra_bit = get_bits1(gbc);
        value = (v << 1) - m + extra_bit;
    }

    if (ctx->trace_enable) {
        char bits[33];
        int i;
        for (i = 0; i < w - 1; i++)
            bits[i] = (v >> i & 1) ? '1' : '0';
        if (v >= m)
            bits[i++] = extra_bit ? '1' : '0';
        bits[i] = 0;

        ff_cbs_trace_syntax_element(ctx, position,
                                    name, subscripts, bits, value);
    }

    *write_to = value;
    return 0;
}
