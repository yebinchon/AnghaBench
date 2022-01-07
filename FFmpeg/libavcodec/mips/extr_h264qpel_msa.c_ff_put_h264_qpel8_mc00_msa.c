
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;


 int LD4 (int const*,int,int ,int ,int ,int ) ;
 int SD4 (int ,int ,int ,int ,int *,int) ;

void ff_put_h264_qpel8_mc00_msa(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint64_t src0, src1, src2, src3, src4, src5, src6, src7;

    LD4(src, stride, src0, src1, src2, src3);
    src += 4 * stride;
    LD4(src, stride, src4, src5, src6, src7);
    SD4(src0, src1, src2, src3, dst, stride);
    dst += 4 * stride;
    SD4(src4, src5, src6, src7, dst, stride);
}
