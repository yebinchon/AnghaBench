
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int khrn_clip_range (int *,int *,int ,int ) ;

void khrn_clip_rect(
   int32_t *x0, int32_t *y0, int32_t *w0, int32_t *h0,
   int32_t x1, int32_t y1, int32_t w1, int32_t h1)
{
   khrn_clip_range(x0, w0, x1, w1);
   khrn_clip_range(y0, h0, y1, h1);
}
