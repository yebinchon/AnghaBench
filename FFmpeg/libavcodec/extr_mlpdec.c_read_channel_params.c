
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int huff_lsbs; void* codebook; int huff_offset; TYPE_3__* filter_params; } ;
struct TYPE_9__ {int order; scalar_t__ shift; } ;
struct TYPE_8__ {int avctx; TYPE_1__* substream; } ;
struct TYPE_7__ {int param_presence_flags; TYPE_4__* channel_params; } ;
typedef TYPE_1__ SubStream ;
typedef TYPE_2__ MLPDecodeContext ;
typedef int GetBitContext ;
typedef TYPE_3__ FilterParams ;
typedef TYPE_4__ ChannelParams ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 size_t FIR ;
 size_t IIR ;
 int PARAM_FIR ;
 int PARAM_HUFFOFFSET ;
 int PARAM_IIR ;
 int av_log (int ,int ,char*) ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_sbits (int *,int) ;
 int read_filter_params (TYPE_2__*,int *,unsigned int,unsigned int,size_t) ;

__attribute__((used)) static int read_channel_params(MLPDecodeContext *m, unsigned int substr,
                               GetBitContext *gbp, unsigned int ch)
{
    SubStream *s = &m->substream[substr];
    ChannelParams *cp = &s->channel_params[ch];
    FilterParams *fir = &cp->filter_params[FIR];
    FilterParams *iir = &cp->filter_params[IIR];
    int ret;

    if (s->param_presence_flags & PARAM_FIR)
        if (get_bits1(gbp))
            if ((ret = read_filter_params(m, gbp, substr, ch, FIR)) < 0)
                return ret;

    if (s->param_presence_flags & PARAM_IIR)
        if (get_bits1(gbp))
            if ((ret = read_filter_params(m, gbp, substr, ch, IIR)) < 0)
                return ret;

    if (fir->order + iir->order > 8) {
        av_log(m->avctx, AV_LOG_ERROR, "Total filter orders too high.\n");
        return AVERROR_INVALIDDATA;
    }

    if (fir->order && iir->order &&
        fir->shift != iir->shift) {
        av_log(m->avctx, AV_LOG_ERROR,
                "FIR and IIR filters must use the same precision.\n");
        return AVERROR_INVALIDDATA;
    }





    if (!fir->order && iir->order)
        fir->shift = iir->shift;

    if (s->param_presence_flags & PARAM_HUFFOFFSET)
        if (get_bits1(gbp))
            cp->huff_offset = get_sbits(gbp, 15);

    cp->codebook = get_bits(gbp, 2);
    cp->huff_lsbs = get_bits(gbp, 5);

    if (cp->huff_lsbs > 24) {
        av_log(m->avctx, AV_LOG_ERROR, "Invalid huff_lsbs.\n");
        cp->huff_lsbs = 0;
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
