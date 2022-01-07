
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void draw_dot(uint8_t *dst, int linesize, int value)
{
    dst[0] = value;
    dst[1] = value;
    dst[-1] = value;
    dst[linesize] = value;
    dst[-linesize] = value;
}
