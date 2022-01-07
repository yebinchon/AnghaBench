
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int npcmblocks; unsigned int subband_size; int predictor_history; scalar_t__ subband_buffer; scalar_t__ lfe_samples; scalar_t__** subband_samples; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR (int ) ;
 int DCA_ADPCM_COEFFS ;
 int DCA_CHANNELS ;
 int DCA_LFE_HISTORY ;
 int DCA_SUBBANDS ;
 int ENOMEM ;
 int av_fast_mallocz (scalar_t__*,unsigned int*,int) ;
 int erase_adpcm_history (TYPE_1__*) ;

__attribute__((used)) static int alloc_sample_buffer(DCACoreDecoder *s)
{
    int nchsamples = DCA_ADPCM_COEFFS + s->npcmblocks;
    int nframesamples = nchsamples * DCA_CHANNELS * DCA_SUBBANDS;
    int nlfesamples = DCA_LFE_HISTORY + s->npcmblocks / 2;
    unsigned int size = s->subband_size;
    int ch, band;


    av_fast_mallocz(&s->subband_buffer, &s->subband_size,
                    (nframesamples + nlfesamples) * sizeof(int32_t));
    if (!s->subband_buffer)
        return AVERROR(ENOMEM);

    if (size != s->subband_size) {
        for (ch = 0; ch < DCA_CHANNELS; ch++)
            for (band = 0; band < DCA_SUBBANDS; band++)
                s->subband_samples[ch][band] = s->subband_buffer +
                    (ch * DCA_SUBBANDS + band) * nchsamples + DCA_ADPCM_COEFFS;
        s->lfe_samples = s->subband_buffer + nframesamples;
    }

    if (!s->predictor_history)
        erase_adpcm_history(s);

    return 0;
}
