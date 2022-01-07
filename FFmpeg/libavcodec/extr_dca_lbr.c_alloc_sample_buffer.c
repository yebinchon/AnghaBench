
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nchannels; int nsubbands; float* ts_buffer; float*** time_samples; int ts_size; } ;
typedef TYPE_1__ DCALbrDecoder ;


 int DCA_LBR_TIME_HISTORY ;
 int DCA_LBR_TIME_SAMPLES ;
 int av_fast_mallocz (float**,int *,int) ;

__attribute__((used)) static int alloc_sample_buffer(DCALbrDecoder *s)
{

    int nchsamples = DCA_LBR_TIME_SAMPLES + DCA_LBR_TIME_HISTORY * 2;
    int nsamples = nchsamples * s->nchannels * s->nsubbands;
    int ch, sb;
    float *ptr;


    av_fast_mallocz(&s->ts_buffer, &s->ts_size, nsamples * sizeof(float));
    if (!s->ts_buffer)
        return -1;

    ptr = s->ts_buffer + DCA_LBR_TIME_HISTORY;
    for (ch = 0; ch < s->nchannels; ch++) {
        for (sb = 0; sb < s->nsubbands; sb++) {
            s->time_samples[ch][sb] = ptr;
            ptr += nchsamples;
        }
    }

    return 0;
}
