
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_7__ {int format; int channels; int stride; int window; float* correlation; int ring; float* buffer; float* hann; int * complex_to_real; int * real_to_complex; TYPE_1__* frag; } ;
struct TYPE_6__ {float* data; float* xdat; } ;
typedef int FFTComplex ;
typedef TYPE_2__ ATempoContext ;


 int AVERROR (int ) ;
 int DFT_R2C ;
 int ENOMEM ;
 int IDFT_C2R ;
 double M_PI ;
 int RE_MALLOC_OR_FAIL (float*,int) ;
 int av_assert0 (int) ;
 int av_get_bytes_per_sample (int) ;
 int av_log2 (int) ;
 int av_rdft_end (int *) ;
 void* av_rdft_init (int,int ) ;
 double cos (double) ;
 int yae_clear (TYPE_2__*) ;
 int yae_release_buffers (TYPE_2__*) ;

__attribute__((used)) static int yae_reset(ATempoContext *atempo,
                     enum AVSampleFormat format,
                     int sample_rate,
                     int channels)
{
    const int sample_size = av_get_bytes_per_sample(format);
    uint32_t nlevels = 0;
    uint32_t pot;
    int i;

    atempo->format = format;
    atempo->channels = channels;
    atempo->stride = sample_size * channels;


    atempo->window = sample_rate / 24;


    nlevels = av_log2(atempo->window);
    pot = 1 << nlevels;
    av_assert0(pot <= atempo->window);

    if (pot < atempo->window) {
        atempo->window = pot * 2;
        nlevels++;
    }


    RE_MALLOC_OR_FAIL(atempo->frag[0].data, atempo->window * atempo->stride);
    RE_MALLOC_OR_FAIL(atempo->frag[1].data, atempo->window * atempo->stride);
    RE_MALLOC_OR_FAIL(atempo->frag[0].xdat, atempo->window * sizeof(FFTComplex));
    RE_MALLOC_OR_FAIL(atempo->frag[1].xdat, atempo->window * sizeof(FFTComplex));


    av_rdft_end(atempo->real_to_complex);
    atempo->real_to_complex = ((void*)0);

    av_rdft_end(atempo->complex_to_real);
    atempo->complex_to_real = ((void*)0);

    atempo->real_to_complex = av_rdft_init(nlevels + 1, DFT_R2C);
    if (!atempo->real_to_complex) {
        yae_release_buffers(atempo);
        return AVERROR(ENOMEM);
    }

    atempo->complex_to_real = av_rdft_init(nlevels + 1, IDFT_C2R);
    if (!atempo->complex_to_real) {
        yae_release_buffers(atempo);
        return AVERROR(ENOMEM);
    }

    RE_MALLOC_OR_FAIL(atempo->correlation, atempo->window * sizeof(FFTComplex));

    atempo->ring = atempo->window * 3;
    RE_MALLOC_OR_FAIL(atempo->buffer, atempo->ring * atempo->stride);


    RE_MALLOC_OR_FAIL(atempo->hann, atempo->window * sizeof(float));

    for (i = 0; i < atempo->window; i++) {
        double t = (double)i / (double)(atempo->window - 1);
        double h = 0.5 * (1.0 - cos(2.0 * M_PI * t));
        atempo->hann[i] = (float)h;
    }

    yae_clear(atempo);
    return 0;
}
