
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void extract_odd2avg_c(const uint8_t *src0, const uint8_t *src1,
                              uint8_t *dst0, uint8_t *dst1, int count)
{
    dst0 += count;
    dst1 += count;
    src0 += count * 4;
    src1 += count * 4;
    count = -count;
    src0++;
    src1++;
    while (count < 0) {
        dst0[count] = (src0[4 * count + 0] + src1[4 * count + 0]) >> 1;
        dst1[count] = (src0[4 * count + 2] + src1[4 * count + 2]) >> 1;
        count++;
    }
}
