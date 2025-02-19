
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int vc1_filter_line (int *,int,int) ;

__attribute__((used)) static inline void vc1_loop_filter(uint8_t *src, int step, int stride,
                                   int len, int pq)
{
    int i;
    int filt3;

    for (i = 0; i < len; i += 4) {
        filt3 = vc1_filter_line(src + 2 * step, stride, pq);
        if (filt3) {
            vc1_filter_line(src + 0 * step, stride, pq);
            vc1_filter_line(src + 1 * step, stride, pq);
            vc1_filter_line(src + 3 * step, stride, pq);
        }
        src += step * 4;
    }
}
