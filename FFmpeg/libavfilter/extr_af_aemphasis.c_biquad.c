
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double w1; double b1; double w2; double b2; double a0; double a1; double a2; } ;
typedef TYPE_1__ BiquadD2 ;



__attribute__((used)) static inline double biquad(BiquadD2 *bq, double in)
{
    double n = in;
    double tmp = n - bq->w1 * bq->b1 - bq->w2 * bq->b2;
    double out = tmp * bq->a0 + bq->w1 * bq->a1 + bq->w2 * bq->a2;

    bq->w2 = bq->w1;
    bq->w1 = tmp;

    return out;
}
