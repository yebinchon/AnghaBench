
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef enum AVRounding { ____Placeholder_AVRounding } AVRounding ;
typedef int AVInteger ;


 int AV_ROUND_NEAR_INF ;
 int AV_ROUND_PASS_MINMAX ;
 int FFMAX (int,int) ;
 int INT32_MAX ;
 int INT64_MAX ;
 int INT64_MIN ;
 int INT_MAX ;
 int av_add_i (int ,int ) ;
 int av_assert2 (int) ;
 int av_div_i (int ,int ) ;
 int av_i2int (int ) ;
 int av_int2i (int) ;
 int av_mul_i (int ,int ) ;

int64_t av_rescale_rnd(int64_t a, int64_t b, int64_t c, enum AVRounding rnd)
{
    int64_t r = 0;
    av_assert2(c > 0);
    av_assert2(b >=0);
    av_assert2((unsigned)(rnd&~AV_ROUND_PASS_MINMAX)<=5 && (rnd&~AV_ROUND_PASS_MINMAX)!=4);

    if (c <= 0 || b < 0 || !((unsigned)(rnd&~AV_ROUND_PASS_MINMAX)<=5 && (rnd&~AV_ROUND_PASS_MINMAX)!=4))
        return INT64_MIN;

    if (rnd & AV_ROUND_PASS_MINMAX) {
        if (a == INT64_MIN || a == INT64_MAX)
            return a;
        rnd -= AV_ROUND_PASS_MINMAX;
    }

    if (a < 0)
        return -(uint64_t)av_rescale_rnd(-FFMAX(a, -INT64_MAX), b, c, rnd ^ ((rnd >> 1) & 1));

    if (rnd == AV_ROUND_NEAR_INF)
        r = c / 2;
    else if (rnd & 1)
        r = c - 1;

    if (b <= INT_MAX && c <= INT_MAX) {
        if (a <= INT_MAX)
            return (a * b + r) / c;
        else {
            int64_t ad = a / c;
            int64_t a2 = (a % c * b + r) / c;
            if (ad >= INT32_MAX && b && ad > (INT64_MAX - a2) / b)
                return INT64_MIN;
            return ad * b + a2;
        }
    } else {

        uint64_t a0 = a & 0xFFFFFFFF;
        uint64_t a1 = a >> 32;
        uint64_t b0 = b & 0xFFFFFFFF;
        uint64_t b1 = b >> 32;
        uint64_t t1 = a0 * b1 + a1 * b0;
        uint64_t t1a = t1 << 32;
        int i;

        a0 = a0 * b0 + t1a;
        a1 = a1 * b1 + (t1 >> 32) + (a0 < t1a);
        a0 += r;
        a1 += a0 < r;

        for (i = 63; i >= 0; i--) {
            a1 += a1 + ((a0 >> i) & 1);
            t1 += t1;
            if (c <= a1) {
                a1 -= c;
                t1++;
            }
        }
        if (t1 > INT64_MAX)
            return INT64_MIN;
        return t1;
    }
}
