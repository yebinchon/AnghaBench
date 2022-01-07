
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HB_AUDIO_REMAP_MAX_CHANNELS ;
 int memcpy (float*,float*,int) ;

__attribute__((used)) static void remap_flt_interleaved(uint8_t **samples, int nsamples,
                                  int nchannels, int *remap_table)
{
    int ii, jj;
    float *samples_flt = (float*)(*samples);
    float tmp_buf[HB_AUDIO_REMAP_MAX_CHANNELS];
    for (ii = 0; ii < nsamples; ii++)
    {
        memcpy(tmp_buf, samples_flt, nchannels * sizeof(float));
        for (jj = 0; jj < nchannels; jj++)
        {
            samples_flt[jj] = tmp_buf[remap_table[jj]];
        }
        samples_flt += nchannels;
    }
}
