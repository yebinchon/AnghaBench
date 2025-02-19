
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 unsigned int abs (int) ;
 int area2 ;
 int area4 ;
 int* zero_prediction_weights ;

__attribute__((used)) static void spatial_compensation_0(uint8_t *src, uint8_t *dst, ptrdiff_t stride)
{
    int i, j;
    int x, y;
    unsigned int p;
    int a;
    uint16_t left_sum[2][8] = { { 0 } };
    uint16_t top_sum[2][8] = { { 0 } };

    for (i = 0; i < 8; i++) {
        a = src[area2 + 7 - i] << 4;
        for (j = 0; j < 8; j++) {
            p = abs(i - j);
            left_sum[p & 1][j] += a >> (p >> 1);
        }
    }

    for (i = 0; i < 8; i++) {
        a = src[area4 + i] << 4;
        for (j = 0; j < 8; j++) {
            p = abs(i - j);
            top_sum[p & 1][j] += a >> (p >> 1);
        }
    }
    for (; i < 10; i++) {
        a = src[area4 + i] << 4;
        for (j = 5; j < 8; j++) {
            p = abs(i - j);
            top_sum[p & 1][j] += a >> (p >> 1);
        }
    }
    for (; i < 12; i++) {
        a = src[area4 + i] << 4;
        for (j = 7; j < 8; j++) {
            p = abs(i - j);
            top_sum[p & 1][j] += a >> (p >> 1);
        }
    }

    for (i = 0; i < 8; i++) {
        top_sum[0][i] += (top_sum[1][i] * 181 + 128) >> 8;
        left_sum[0][i] += (left_sum[1][i] * 181 + 128) >> 8;
    }
    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++)
            dst[x] = ((uint32_t) top_sum[0][x] * zero_prediction_weights[y * 16 + x * 2 + 0] +
                      (uint32_t) left_sum[0][y] * zero_prediction_weights[y * 16 + x * 2 + 1] +
                      0x8000) >> 16;
        dst += stride;
    }
}
