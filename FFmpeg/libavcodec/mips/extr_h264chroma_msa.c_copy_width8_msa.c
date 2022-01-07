
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;


 int LD4 (int *,int,int ,int ,int ,int ) ;
 int SD4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void copy_width8_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                            int32_t height)
{
    uint64_t src0, src1, src2, src3, src4, src5, src6, src7;

    if (8 == height) {
        LD4(src, stride, src0, src1, src2, src3);
        src += 4 * stride;
        LD4(src, stride, src4, src5, src6, src7);
        SD4(src0, src1, src2, src3, dst, stride);
        dst += 4 * stride;
        SD4(src4, src5, src6, src7, dst, stride);
    } else if (4 == height) {
        LD4(src, stride, src0, src1, src2, src3);
        SD4(src0, src1, src2, src3, dst, stride);
    }
}
