
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void copyv(const float *p1, const int stride1, float *p2, const int length)
{
    int i;

    for (i = 0; i < length; i++) {
        p2[i] = *p1;
        p1 += stride1;
    }
}
