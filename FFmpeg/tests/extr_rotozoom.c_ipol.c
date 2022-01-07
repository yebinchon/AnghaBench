
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int ipol(uint8_t *src, int x, int y)
{
    int int_x = x >> 16;
    int int_y = y >> 16;
    int frac_x = x & 0xFFFF;
    int frac_y = y & 0xFFFF;
    int s00 = src[( int_x & 255) + 256 * ( int_y & 255)];
    int s01 = src[((int_x + 1) & 255) + 256 * ( int_y & 255)];
    int s10 = src[( int_x & 255) + 256 * ((int_y + 1) & 255)];
    int s11 = src[((int_x + 1) & 255) + 256 * ((int_y + 1) & 255)];
    int s0 = (((1 << 16) - frac_x) * s00 + frac_x * s01) >> 8;
    int s1 = (((1 << 16) - frac_x) * s10 + frac_x * s11) >> 8;

    return (((1 << 16) - frac_y) * s0 + frac_y * s1) >> 24;
}
