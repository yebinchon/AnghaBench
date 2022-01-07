
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline double ff_eval_poly(const double *coeff, int size, double x) {
    double sum = coeff[size-1];
    int i;
    for (i = size-2; i >= 0; --i) {
        sum *= x;
        sum += coeff[i];
    }
    return sum;
}
