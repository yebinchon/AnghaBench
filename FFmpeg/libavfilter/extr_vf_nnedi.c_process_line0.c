
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int FFMAX (int ,int) ;
 int FFMIN (int,int) ;

__attribute__((used)) static int32_t process_line0(const uint8_t *tempu, int width, uint8_t *dstp8, const uint8_t *src3p8, const int src_pitch, const int max_value, const int chroma)
{
    uint8_t *dstp = (uint8_t *)dstp8;
    const uint8_t *src3p = (const uint8_t *)src3p8;
    int minimum = 0;
    int maximum = max_value - 1;
    int count = 0, x;
    for (x = 0; x < width; x++) {
        if (tempu[x]) {
            int tmp = 19 * (src3p[x + src_pitch * 2] + src3p[x + src_pitch * 4]) - 3 * (src3p[x] + src3p[x + src_pitch * 6]);
            tmp /= 32;
            dstp[x] = FFMAX(FFMIN(tmp, maximum), minimum);
        } else {
            dstp[x] = 255;
            count++;
        }
    }
    return count;
}
