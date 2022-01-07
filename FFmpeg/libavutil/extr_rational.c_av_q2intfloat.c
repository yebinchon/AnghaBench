
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_3__ {int den; int num; } ;
typedef TYPE_1__ AVRational ;


 int av_assert1 (int) ;
 int av_log2 (int) ;
 int av_rescale (int,int,int) ;

uint32_t av_q2intfloat(AVRational q) {
    int64_t n;
    int shift;
    int sign = 0;

    if (q.den < 0) {
        q.den *= -1;
        q.num *= -1;
    }
    if (q.num < 0) {
        q.num *= -1;
        sign = 1;
    }

    if (!q.num && !q.den) return 0xFFC00000;
    if (!q.num) return 0;
    if (!q.den) return 0x7F800000 | (q.num & 0x80000000);

    shift = 23 + av_log2(q.den) - av_log2(q.num);
    if (shift >= 0) n = av_rescale(q.num, 1LL<<shift, q.den);
    else n = av_rescale(q.num, 1, ((int64_t)q.den) << -shift);

    shift -= n >= (1<<24);
    shift += n < (1<<23);

    if (shift >= 0) n = av_rescale(q.num, 1LL<<shift, q.den);
    else n = av_rescale(q.num, 1, ((int64_t)q.den) << -shift);

    av_assert1(n < (1<<24));
    av_assert1(n >= (1<<23));

    return sign<<31 | (150-shift)<<23 | (n - (1<<23));
}
