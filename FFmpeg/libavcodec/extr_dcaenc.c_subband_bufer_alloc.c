
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int *** subband; } ;
typedef TYPE_1__ DCAEncContext ;


 int AVERROR (int ) ;
 int DCAENC_SUBBANDS ;
 int DCA_ADPCM_COEFFS ;
 int ENOMEM ;
 int MAX_CHANNELS ;
 int SUBBAND_SAMPLES ;
 int * av_calloc (int,int) ;

__attribute__((used)) static int subband_bufer_alloc(DCAEncContext *c)
{
    int ch, band;
    int32_t *bufer = av_calloc(MAX_CHANNELS * DCAENC_SUBBANDS *
                               (SUBBAND_SAMPLES + DCA_ADPCM_COEFFS),
                               sizeof(int32_t));
    if (!bufer)
        return AVERROR(ENOMEM);



    for (ch = 0; ch < MAX_CHANNELS; ch++) {
        for (band = 0; band < DCAENC_SUBBANDS; band++) {
            c->subband[ch][band] = bufer +
                                   ch * DCAENC_SUBBANDS * (SUBBAND_SAMPLES + DCA_ADPCM_COEFFS) +
                                   band * (SUBBAND_SAMPLES + DCA_ADPCM_COEFFS) + DCA_ADPCM_COEFFS;
        }
    }
    return 0;
}
