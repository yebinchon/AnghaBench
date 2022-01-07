
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {float** magnitudes; float** phases; int data; int scale; } ;
typedef TYPE_1__ ShowSpectrumContext ;
typedef TYPE_2__ AVFilterContext ;
 int av_assert0 (int ) ;
 float av_clipf (float,int,int) ;
 float cbrtf (float) ;
 float log10f (float) ;
 float powf (float,double) ;
 float sqrtf (float) ;

__attribute__((used)) static float get_value(AVFilterContext *ctx, int ch, int y)
{
    ShowSpectrumContext *s = ctx->priv;
    float *magnitudes = s->magnitudes[ch];
    float *phases = s->phases[ch];
    float a;

    switch (s->data) {
    case 134:

        a = magnitudes[y];
        break;
    case 133:

        a = phases[y];
        break;
    default:
        av_assert0(0);
    }


    switch (s->scale) {
    case 130:
        a = av_clipf(a, 0, 1);
        break;
    case 128:
        a = av_clipf(sqrtf(a), 0, 1);
        break;
    case 135:
        a = av_clipf(cbrtf(a), 0, 1);
        break;
    case 131:
        a = av_clipf(sqrtf(sqrtf(a)), 0, 1);
        break;
    case 132:
        a = av_clipf(powf(a, 0.20), 0, 1);
        break;
    case 129:
        a = 1.f + log10f(av_clipf(a, 1e-6, 1)) / 6.f;
        break;
    default:
        av_assert0(0);
    }

    return a;
}
