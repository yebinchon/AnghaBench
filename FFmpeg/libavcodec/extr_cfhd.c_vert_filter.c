
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int16_t ;


 int filter (int *,int ,int *,int ,int *,int ,int,int ) ;

__attribute__((used)) static void vert_filter(int16_t *output, ptrdiff_t out_stride,
                        int16_t *low, ptrdiff_t low_stride,
                        int16_t *high, ptrdiff_t high_stride, int len)
{
    filter(output, out_stride, low, low_stride, high, high_stride, len, 0);
}
