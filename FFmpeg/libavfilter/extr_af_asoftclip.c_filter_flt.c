
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float param; int type; } ;
typedef TYPE_1__ ASoftClipContext ;
 double FFABS (float const) ;
 float FFSIGN (float const) ;
 float M_PI ;
 double M_PI_2 ;
 float atanf (float const) ;
 int expf (float) ;
 float powf (float const,float) ;
 float sinf (float const) ;
 float const sqrtf (float) ;
 float tanhf (float const) ;

__attribute__((used)) static void filter_flt(ASoftClipContext *s,
                       void **dptr, const void **sptr,
                       int nb_samples, int channels)
{
    float param = s->param;

    for (int c = 0; c < channels; c++) {
        const float *src = sptr[c];
        float *dst = dptr[c];

        switch (s->type) {
        case 128:
            for (int n = 0; n < nb_samples; n++) {
                dst[n] = tanhf(src[n] * param);
            }
            break;
        case 133:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = 2.f / M_PI * atanf(src[n] * param);
            break;
        case 132:
            for (int n = 0; n < nb_samples; n++) {
                if (FFABS(src[n]) >= 1.5f)
                    dst[n] = FFSIGN(src[n]);
                else
                    dst[n] = src[n] - 0.1481f * powf(src[n], 3.f);
            }
            break;
        case 131:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = 2.f / (1.f + expf(-2.f * src[n])) - 1.;
            break;
        case 134:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = src[n] / (sqrtf(param + src[n] * src[n]));
            break;
        case 130:
            for (int n = 0; n < nb_samples; n++) {
                if (FFABS(src[n]) >= 1.25)
                    dst[n] = FFSIGN(src[n]);
                else
                    dst[n] = src[n] - 0.08192f * powf(src[n], 5.f);
            }
            break;
        case 129:
            for (int n = 0; n < nb_samples; n++) {
                if (FFABS(src[n]) >= M_PI_2)
                    dst[n] = FFSIGN(src[n]);
                else
                    dst[n] = sinf(src[n]);
            }
            break;
        }
    }
}
