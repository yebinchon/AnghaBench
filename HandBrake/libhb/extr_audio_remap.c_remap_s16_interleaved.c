
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int HB_AUDIO_REMAP_MAX_CHANNELS ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void remap_s16_interleaved(uint8_t **samples, int nsamples,
                                  int nchannels, int *remap_table)
{
    int ii, jj;
    int16_t *samples_s16 = (int16_t*)(*samples);
    int16_t tmp_buf[HB_AUDIO_REMAP_MAX_CHANNELS];
    for (ii = 0; ii < nsamples; ii++)
    {
        memcpy(tmp_buf, samples_s16, nchannels * sizeof(int16_t));
        for (jj = 0; jj < nchannels; jj++)
        {
            samples_s16[jj] = tmp_buf[remap_table[jj]];
        }
        samples_s16 += nchannels;
    }
}
