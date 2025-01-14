
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_channels; int fft_offset; int subframe_size; float** fft_buffer; } ;
typedef TYPE_1__ QDMCContext ;


 float* amplitude_tab ;
 float* sin_table ;

__attribute__((used)) static void add_wave0(QDMCContext *s, int offset, int freqs, int stereo_mode, int amp, int phase)
{
    float level, im, re;
    int pos;

    if (s->nb_channels == 1)
        stereo_mode = 0;

    level = amplitude_tab[amp & 0x3F];
    im = level * sin_table[ (phase << 6) & 0x1FF];
    re = level * sin_table[((phase << 6) + 128) & 0x1FF];
    pos = s->fft_offset + freqs + s->subframe_size * offset;
    s->fft_buffer[ stereo_mode][pos ] += im;
    s->fft_buffer[2 + stereo_mode][pos ] += re;
    s->fft_buffer[ stereo_mode][pos + 1] -= im;
    s->fft_buffer[2 + stereo_mode][pos + 1] -= re;
}
