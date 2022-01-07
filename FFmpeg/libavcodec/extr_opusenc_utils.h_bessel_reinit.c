
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* a; float* b; } ;
typedef TYPE_1__ FFBesselFilter ;


 float M_PI ;
 float pow (float,float) ;
 float sqrtf (float) ;
 float tanf (float) ;

__attribute__((used)) static inline int bessel_reinit(FFBesselFilter *s, float n, float f0, float fs,
                                int highpass)
{
    int unstable;
    float c, cfreq, w0, k1, k2;

    if (!highpass) {
        c = (1.0f/sqrtf(sqrtf(pow(2.0f, 1.0f/n) - 3.0f/4.0f) - 0.5f))/sqrtf(3.0f);
        cfreq = c*f0/fs;
        unstable = (cfreq <= 0.0f || cfreq >= 1.0f/4.0f);
    } else {
        c = sqrtf(3.0f)*sqrtf(sqrtf(pow(2.0f, 1.0f/n) - 3.0f/4.0f) - 0.5f);
        cfreq = 0.5f - c*f0/fs;
        unstable = (cfreq <= 3.0f/8.0f || cfreq >= 1.0f/2.0f);
    }

    w0 = tanf(M_PI*cfreq);
    k1 = 3.0f * w0;
    k2 = 3.0f * w0;

    s->a[0] = k2/(1.0f + k1 + k2);
    s->a[1] = 2.0f * s->a[0];
    s->a[2] = s->a[0];
    s->b[0] = 2.0f * s->a[0] * (1.0f/k2 - 1.0f);
    s->b[1] = 1.0f - (s->a[0] + s->a[1] + s->a[2] + s->b[0]);

    if (highpass) {
        s->a[1] *= -1;
        s->b[0] *= -1;
    }

    return unstable;
}
