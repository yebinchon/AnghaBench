
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v2i64 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;


 int SD4 (int ,int ,int ,int ,int *,int) ;
 int __msa_copy_u_d (int ,int ) ;
 scalar_t__ __msa_fill_b (int ) ;

__attribute__((used)) static void copy_8bit_value_width8_msa(uint8_t *src, uint8_t val,
                                       int32_t src_stride, int32_t height)
{
    int32_t cnt;
    uint64_t dst0;
    v16u8 val0;

    val0 = (v16u8) __msa_fill_b(val);
    dst0 = __msa_copy_u_d((v2i64) val0, 0);

    for (cnt = (height >> 2); cnt--;) {
        SD4(dst0, dst0, dst0, dst0, src, src_stride);
        src += (4 * src_stride);
    }
}
