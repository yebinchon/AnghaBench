
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int rnd () ;

__attribute__((used)) static void fill_loopfilter_buffers(uint8_t *buf, ptrdiff_t stride, int w, int h)
{
    int x, y;
    for (y = 0; y < h; y++)
        for (x = 0; x < w; x++)
            buf[y * stride + x] = rnd() & 0xff;
}
