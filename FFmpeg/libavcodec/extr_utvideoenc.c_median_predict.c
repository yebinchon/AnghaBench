
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_4__ {int (* sub_median_pred ) (int*,int*,int*,int,int*,int*) ;} ;
struct TYPE_5__ {TYPE_1__ llvidencdsp; } ;
typedef TYPE_2__ UtvideoContext ;


 int stub1 (int*,int*,int*,int,int*,int*) ;

__attribute__((used)) static void median_predict(UtvideoContext *c, uint8_t *src, uint8_t *dst,
                           ptrdiff_t stride, int width, int height)
{
    int i, j;
    int A, B;
    uint8_t prev;


    prev = 0x80;
    for (i = 0; i < width; i++) {
        *dst++ = src[i] - prev;
        prev = src[i];
    }

    if (height == 1)
        return;

    src += stride;





    A = B = 0;


    for (j = 1; j < height; j++) {
        c->llvidencdsp.sub_median_pred(dst, src - stride, src, width, &A, &B);
        dst += width;
        src += stride;
    }
}
