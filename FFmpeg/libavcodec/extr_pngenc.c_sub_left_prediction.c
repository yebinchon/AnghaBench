
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* diff_bytes ) (int *,int const*,int const*,int) ;} ;
struct TYPE_5__ {TYPE_1__ llvidencdsp; } ;
typedef TYPE_2__ PNGEncContext ;


 int FFMIN (int,int) ;
 int memcpy (int *,int const*,int) ;
 int stub1 (int *,int const*,int const*,int) ;

__attribute__((used)) static void sub_left_prediction(PNGEncContext *c, uint8_t *dst, const uint8_t *src, int bpp, int size)
{
    const uint8_t *src1 = src + bpp;
    const uint8_t *src2 = src;
    int x, unaligned_w;

    memcpy(dst, src, bpp);
    dst += bpp;
    size -= bpp;
    unaligned_w = FFMIN(32 - bpp, size);
    for (x = 0; x < unaligned_w; x++)
        *dst++ = *src1++ - *src2++;
    size -= unaligned_w;
    c->llvidencdsp.diff_bytes(dst, src1, src2, size);
}
