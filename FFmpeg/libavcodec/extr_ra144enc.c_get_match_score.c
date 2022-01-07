
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLOCKSIZE ;
 int LPC_ORDER ;
 int ff_celp_lp_synthesis_filterf (float*,float const*,float*,int,int ) ;
 int orthogonalize (float*,float const*) ;

__attribute__((used)) static void get_match_score(float *work, const float *coefs, float *vect,
                            const float *ortho1, const float *ortho2,
                            const float *data, float *score, float *gain)
{
    float c, g;
    int i;

    ff_celp_lp_synthesis_filterf(work, coefs, vect, BLOCKSIZE, LPC_ORDER);
    if (ortho1)
        orthogonalize(work, ortho1);
    if (ortho2)
        orthogonalize(work, ortho2);
    c = g = 0;
    for (i = 0; i < BLOCKSIZE; i++) {
        g += work[i] * work[i];
        c += data[i] * work[i];
    }
    if (c <= 0) {
        *score = 0;
        return;
    }
    *gain = c / g;
    *score = *gain * c;
}
