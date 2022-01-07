
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int compress_alpha (int *,int,int *) ;
 int compress_color (int *,int,int *) ;
 int rgba2ycocg (int *,int const*) ;

__attribute__((used)) static int dxt5ys_block(uint8_t *dst, ptrdiff_t stride, const uint8_t *block)
{
    int x, y;
    uint8_t reorder[64];


    for (y = 0; y < 4; y++)
        for (x = 0; x < 4; x++)
            rgba2ycocg(reorder + x * 4 + y * 16, block + x * 4 + y * stride);

    compress_alpha(dst + 0, 16, reorder);
    compress_color(dst + 8, 16, reorder);

    return 16;
}
