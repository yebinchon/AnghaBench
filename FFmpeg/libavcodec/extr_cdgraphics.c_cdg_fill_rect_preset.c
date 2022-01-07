
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memset (int *,int,int) ;

__attribute__((used)) static void cdg_fill_rect_preset(int tl_x, int tl_y, uint8_t *out,
                                 int color, int w, int h, int stride)
{
    int y;

    for (y = tl_y; y < tl_y + h; y++)
        memset(out + tl_x + y * stride, color, w);
}
