
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {double* coeffs; } ;
struct TYPE_5__ {int lfg; } ;
typedef TYPE_1__ ATRAC9Context ;
typedef TYPE_2__ ATRAC9ChannelData ;


 float FFABS (double) ;
 float FFMAX (float,float) ;
 int av_bmg_get (int *,double*) ;

__attribute__((used)) static inline void fill_with_noise(ATRAC9Context *s, ATRAC9ChannelData *c,
                                   int start, int count)
{
    float maxval = 0.0f;
    for (int i = 0; i < count; i += 2) {
        double tmp[2];
        av_bmg_get(&s->lfg, tmp);
        c->coeffs[start + i + 0] = tmp[0];
        c->coeffs[start + i + 1] = tmp[1];
        maxval = FFMAX(FFMAX(FFABS(tmp[0]), FFABS(tmp[1])), maxval);
    }

    for (int i = 0; i < count; i++)
        c->coeffs[start + i] /= maxval;
}
