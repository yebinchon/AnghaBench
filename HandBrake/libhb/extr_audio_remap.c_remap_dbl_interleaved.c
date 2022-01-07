
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HB_AUDIO_REMAP_MAX_CHANNELS ;
 int memcpy (double*,double*,int) ;

__attribute__((used)) static void remap_dbl_interleaved(uint8_t **samples, int nsamples,
                                  int nchannels, int *remap_table)
{
    int ii, jj;
    double *samples_dbl = (double*)(*samples);
    double tmp_buf[HB_AUDIO_REMAP_MAX_CHANNELS];
    for (ii = 0; ii < nsamples; ii++)
    {
        memcpy(tmp_buf, samples_dbl, nchannels * sizeof(double));
        for (jj = 0; jj < nchannels; jj++)
        {
            samples_dbl[jj] = tmp_buf[remap_table[jj]];
        }
        samples_dbl += nchannels;
    }
}
