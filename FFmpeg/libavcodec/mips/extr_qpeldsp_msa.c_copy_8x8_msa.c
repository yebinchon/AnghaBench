
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;


 int LD (int const*) ;
 int SD (int ,int *) ;

__attribute__((used)) static void copy_8x8_msa(const uint8_t *src, int32_t src_stride,
                         uint8_t *dst, int32_t dst_stride)
{
    uint64_t src0, src1;
    int32_t loop_cnt;

    for (loop_cnt = 4; loop_cnt--;) {
        src0 = LD(src);
        src += src_stride;
        src1 = LD(src);
        src += src_stride;

        SD(src0, dst);
        dst += dst_stride;
        SD(src1, dst);
        dst += dst_stride;
    }
}
