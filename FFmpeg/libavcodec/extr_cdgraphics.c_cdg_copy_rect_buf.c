
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void cdg_copy_rect_buf(int out_tl_x, int out_tl_y, uint8_t *out,
                              int in_tl_x, int in_tl_y, uint8_t *in,
                              int w, int h, int stride)
{
    int y;

    in += in_tl_x + in_tl_y * stride;
    out += out_tl_x + out_tl_y * stride;
    for (y = 0; y < h; y++)
        memcpy(out + y * stride, in + y * stride, w);
}
