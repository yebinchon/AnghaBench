
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double re; double im; } ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int M_PI ;
 TYPE_1__* av_malloc_array (int,int) ;
 double cos (double) ;
 TYPE_1__* exptab ;
 double sin (double) ;

__attribute__((used)) static int fft_ref_init(int nbits, int inverse)
{
    int i, n = 1 << nbits;

    exptab = av_malloc_array((n / 2), sizeof(*exptab));
    if (!exptab)
        return AVERROR(ENOMEM);

    for (i = 0; i < (n / 2); i++) {
        double alpha = 2 * M_PI * (float) i / (float) n;
        double c1 = cos(alpha), s1 = sin(alpha);
        if (!inverse)
            s1 = -s1;
        exptab[i].re = c1;
        exptab[i].im = s1;
    }
    return 0;
}
