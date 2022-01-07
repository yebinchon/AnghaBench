
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_PI ;
 double M_SQRT1_2 ;
 double const cos (int) ;

__attribute__((used)) static void fdct_1d(double *out, const double *in, int sz)
{
    int k, n;

    for (k = 0; k < sz; k++) {
        out[k] = 0.0;
        for (n = 0; n < sz; n++)
            out[k] += in[n] * cos(M_PI * (2 * n + 1) * k / (sz * 2.0));
    }
    out[0] *= M_SQRT1_2;
}
