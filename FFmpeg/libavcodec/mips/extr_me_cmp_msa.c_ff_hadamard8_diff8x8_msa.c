
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int MpegEncContext ;


 int hadamard_diff_8x8_msa (int *,int ,int *,int ) ;

int ff_hadamard8_diff8x8_msa(MpegEncContext *s, uint8_t *dst, uint8_t *src,
                             ptrdiff_t stride, int h)
{
    return hadamard_diff_8x8_msa(src, stride, dst, stride);
}
