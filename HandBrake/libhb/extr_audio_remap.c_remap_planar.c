
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int HB_AUDIO_REMAP_MAX_CHANNELS ;
 int memcpy (int **,int **,int) ;

__attribute__((used)) static void remap_planar(uint8_t **samples, int nsamples,
                         int nchannels, int *remap_table)
{
    int ii;
    uint8_t *tmp_buf[HB_AUDIO_REMAP_MAX_CHANNELS];
    memcpy(tmp_buf, samples, nchannels * sizeof(uint8_t*));
    for (ii = 0; ii < nchannels; ii++)
    {
        samples[ii] = tmp_buf[remap_table[ii]];
    }
}
