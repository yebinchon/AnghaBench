
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int DCAEncContext ;


 scalar_t__ abs (scalar_t__ const) ;
 scalar_t__ get_cb (int *,scalar_t__) ;

__attribute__((used)) static inline int32_t find_peak(DCAEncContext *c, const int32_t *in, int len)
{
    int sample;
    int32_t m = 0;
    for (sample = 0; sample < len; sample++) {
        int32_t s = abs(in[sample]);
        if (m < s)
            m = s;
    }
    return get_cb(c, m);
}
