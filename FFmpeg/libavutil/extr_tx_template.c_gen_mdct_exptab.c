
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {double re; double im; } ;
struct TYPE_4__ {TYPE_3__* exptab; } ;
typedef TYPE_1__ AVTXContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int M_PI_2 ;
 TYPE_3__* av_malloc_array (int,int) ;
 double cos (double const) ;
 int fabs (double) ;
 double sin (double const) ;
 double sqrt (int ) ;

__attribute__((used)) static int gen_mdct_exptab(AVTXContext *s, int len4, double scale)
{
    const double theta = (scale < 0 ? len4 : 0) + 1.0/8.0;

    if (!(s->exptab = av_malloc_array(len4, sizeof(*s->exptab))))
        return AVERROR(ENOMEM);

    scale = sqrt(fabs(scale));
    for (int i = 0; i < len4; i++) {
        const double alpha = M_PI_2 * (i + theta) / len4;
        s->exptab[i].re = cos(alpha) * scale;
        s->exptab[i].im = sin(alpha) * scale;
    }

    return 0;
}
