
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int32_t ;
struct TYPE_3__ {int channels; int blocksize; int nwrap; scalar_t__* coeffs; scalar_t__** decoded_base; scalar_t__** decoded; int nmean; scalar_t__** offset; int avctx; } ;
typedef TYPE_1__ ShortenContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int FFMAX (int,int ) ;
 int UINT_MAX ;
 int av_log (int ,int ,char*) ;
 int av_reallocp_array (scalar_t__**,int,int) ;

__attribute__((used)) static int allocate_buffers(ShortenContext *s)
{
    int i, chan, err;

    for (chan = 0; chan < s->channels; chan++) {
        if (FFMAX(1, s->nmean) >= UINT_MAX / sizeof(int32_t)) {
            av_log(s->avctx, AV_LOG_ERROR, "nmean too large\n");
            return AVERROR_INVALIDDATA;
        }
        if (s->blocksize + (uint64_t)s->nwrap >= UINT_MAX / sizeof(int32_t)) {
            av_log(s->avctx, AV_LOG_ERROR,
                   "s->blocksize + s->nwrap too large\n");
            return AVERROR_INVALIDDATA;
        }

        if ((err = av_reallocp_array(&s->offset[chan],
                               sizeof(int32_t),
                               FFMAX(1, s->nmean))) < 0)
            return err;

        if ((err = av_reallocp_array(&s->decoded_base[chan], (s->blocksize + s->nwrap),
                               sizeof(s->decoded_base[0][0]))) < 0)
            return err;
        for (i = 0; i < s->nwrap; i++)
            s->decoded_base[chan][i] = 0;
        s->decoded[chan] = s->decoded_base[chan] + s->nwrap;
    }

    if ((err = av_reallocp_array(&s->coeffs, s->nwrap, sizeof(*s->coeffs))) < 0)
        return err;

    return 0;
}
