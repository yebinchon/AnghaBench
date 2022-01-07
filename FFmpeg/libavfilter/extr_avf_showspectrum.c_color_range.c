
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; float nb_display_channels; int const color_mode; float rotation; float saturation; } ;
typedef TYPE_1__ ShowSpectrumContext ;
 float M_PI ;
 float M_PI_2 ;






 int av_assert0 (int ) ;
 float cosf (float) ;
 float sinf (float) ;

__attribute__((used)) static void color_range(ShowSpectrumContext *s, int ch,
                        float *yf, float *uf, float *vf)
{
    switch (s->mode) {
    case 142:

        *yf = 256.0f / s->nb_display_channels;
        switch (s->color_mode) {
        case 131:
        case 134:
        case 133:
        case 139:
        case 140:
        case 138:
        case 141:
        case 137:
        case 128:
        case 132:
        case 143:
        case 129:
        case 135:
        case 136:
            *uf = *yf;
            *vf = *yf;
            break;
        case 144:


            *uf = *yf * M_PI;
            *vf = *yf * M_PI;
            break;
        default:
            av_assert0(0);
        }
        break;
    case 130:

        *yf = 256.0f;
        *uf = 256.0f;
        *vf = 256.0f;
        break;
    default:
        av_assert0(0);
    }

    if (s->color_mode == 144) {
        if (s->nb_display_channels > 1) {
            *uf *= 0.5f * sinf((2 * M_PI * ch) / s->nb_display_channels + M_PI * s->rotation);
            *vf *= 0.5f * cosf((2 * M_PI * ch) / s->nb_display_channels + M_PI * s->rotation);
        } else {
            *uf *= 0.5f * sinf(M_PI * s->rotation);
            *vf *= 0.5f * cosf(M_PI * s->rotation + M_PI_2);
        }
    } else {
        *uf += *uf * sinf(M_PI * s->rotation);
        *vf += *vf * cosf(M_PI * s->rotation + M_PI_2);
    }

    *uf *= s->saturation;
    *vf *= s->saturation;
}
