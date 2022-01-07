
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int32_t ;



__attribute__((used)) static void lpc_apply_welch_window_c(const int32_t *data, int len,
                                     double *w_data)
{
    int i, n2;
    double w;
    double c;

    n2 = (len >> 1);
    c = 2.0 / (len - 1.0);

    if (len & 1) {
        for(i=0; i<n2; i++) {
            w = c - i - 1.0;
            w = 1.0 - (w * w);
            w_data[i] = data[i] * w;
            w_data[len-1-i] = data[len-1-i] * w;
        }
        return;
    }

    w_data+=n2;
      data+=n2;
    for(i=0; i<n2; i++) {
        w = c - n2 + i;
        w = 1.0 - (w * w);
        w_data[-i-1] = data[-i-1] * w;
        w_data[+i ] = data[+i ] * w;
    }
}
