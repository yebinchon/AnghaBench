
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef double int32_t ;
typedef double int16_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_4__ {double noise_scale; int method; } ;
struct TYPE_5__ {TYPE_1__ dither; } ;
typedef TYPE_2__ SwrContext ;


 int AVERROR (int ) ;




 int ENOMEM ;
 int SWR_DITHER_NB ;


 int TMP_EXTRA ;
 double UINT_MAX ;
 int av_assert0 (int) ;
 int av_free (double*) ;
 double* av_malloc_array (int,int) ;
 double sqrt (int) ;

int swri_get_dither(SwrContext *s, void *dst, int len, unsigned seed, enum AVSampleFormat noise_fmt) {
    double scale = s->dither.noise_scale;

    double *tmp = av_malloc_array(len + 2, sizeof(double));
    int i;

    if (!tmp)
        return AVERROR(ENOMEM);

    for(i=0; i<len + 2; i++){
        double v;
        seed = seed* 1664525 + 1013904223;

        switch(s->dither.method){
            case 129: v= ((double)seed) / UINT_MAX - 0.5; break;
            default:
                av_assert0(s->dither.method < SWR_DITHER_NB);
                v = ((double)seed) / UINT_MAX;
                seed = seed*1664525 + 1013904223;
                v-= ((double)seed) / UINT_MAX;
                break;
        }
        tmp[i] = v;
    }

    for(i=0; i<len; i++){
        double v;

        switch(s->dither.method){
            default:
                av_assert0(s->dither.method < SWR_DITHER_NB);
                v = tmp[i];
                break;
            case 128 :
                v = (- tmp[i] + 2*tmp[i+1] - tmp[i+2]) / sqrt(6);
                break;
        }

        v*= scale;

        switch(noise_fmt){
            case 131: ((int16_t*)dst)[i] = v; break;
            case 130: ((int32_t*)dst)[i] = v; break;
            case 132: ((float *)dst)[i] = v; break;
            case 133: ((double *)dst)[i] = v; break;
            default: av_assert0(0);
        }
    }

    av_free(tmp);
    return 0;
}
