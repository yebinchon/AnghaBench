
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct MpegEncContext {int dummy; } ;
typedef int ptrdiff_t ;


 int w_c (struct MpegEncContext*,int *,int *,int ,int,int,int) ;

int ff_w53_32_c(struct MpegEncContext *v, uint8_t *pix1, uint8_t *pix2, ptrdiff_t line_size, int h)
{
    return w_c(v, pix1, pix2, line_size, 32, h, 1);
}
