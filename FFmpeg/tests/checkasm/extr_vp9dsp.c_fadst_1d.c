
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_PI ;
 double const sin (int) ;

__attribute__((used)) static void fadst_1d(double *out, const double *in, int sz)
{
    int k, n;

    for (k = 0; k < sz; k++) {
        out[k] = 0.0;
        for (n = 0; n < sz; n++)
            out[k] += in[n] * sin(M_PI * (2 * n + 1) * (2 * k + 1) / (sz * 4.0));
    }
}
