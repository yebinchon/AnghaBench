
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int nb_samples; int ** extended_data; } ;
typedef int SwrContext ;
typedef TYPE_1__ AVFrame ;


 int swr_convert (int *,int **,int,int const**,int) ;

__attribute__((used)) static inline int convert_frame(SwrContext *s,
                                AVFrame *out, const AVFrame *in)
{
    int ret;
    uint8_t **out_data = ((void*)0);
    const uint8_t **in_data = ((void*)0);
    int out_nb_samples = 0, in_nb_samples = 0;

    if (out) {
        out_data = out->extended_data;
        out_nb_samples = out->nb_samples;
    }

    if (in) {
        in_data = (const uint8_t **)in->extended_data;
        in_nb_samples = in->nb_samples;
    }

    ret = swr_convert(s, out_data, out_nb_samples, in_data, in_nb_samples);

    if (ret < 0) {
        if (out)
            out->nb_samples = 0;
        return ret;
    }

    if (out)
        out->nb_samples = ret;

    return 0;
}
