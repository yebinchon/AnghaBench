
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int npcmblocks; unsigned int x96_subband_size; int predictor_history; scalar_t__ x96_subband_buffer; scalar_t__** x96_subband_samples; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR (int ) ;
 int DCA_ADPCM_COEFFS ;
 int DCA_CHANNELS ;
 int DCA_SUBBANDS_X96 ;
 int ENOMEM ;
 int av_fast_mallocz (scalar_t__*,unsigned int*,int) ;
 int erase_x96_adpcm_history (TYPE_1__*) ;

__attribute__((used)) static int alloc_x96_sample_buffer(DCACoreDecoder *s)
{
    int nchsamples = DCA_ADPCM_COEFFS + s->npcmblocks;
    int nframesamples = nchsamples * DCA_CHANNELS * DCA_SUBBANDS_X96;
    unsigned int size = s->x96_subband_size;
    int ch, band;


    av_fast_mallocz(&s->x96_subband_buffer, &s->x96_subband_size,
                    nframesamples * sizeof(int32_t));
    if (!s->x96_subband_buffer)
        return AVERROR(ENOMEM);

    if (size != s->x96_subband_size) {
        for (ch = 0; ch < DCA_CHANNELS; ch++)
            for (band = 0; band < DCA_SUBBANDS_X96; band++)
                s->x96_subband_samples[ch][band] = s->x96_subband_buffer +
                    (ch * DCA_SUBBANDS_X96 + band) * nchsamples + DCA_ADPCM_COEFFS;
    }

    if (!s->predictor_history)
        erase_x96_adpcm_history(s);

    return 0;
}
