
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static uint64_t getSSD(const uint8_t *src1, const uint8_t *src2,
                       int stride1, int stride2, int w, int h)
{
    int x, y;
    uint64_t ssd = 0;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            int d = src1[x + y * stride1] - src2[x + y * stride2];
            ssd += d * d;
        }
    }
    return ssd;
}
