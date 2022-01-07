
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int ST_UB8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int) ;
 scalar_t__ __msa_fill_b (int ) ;

__attribute__((used)) static void copy_8bit_value_width16_msa(uint8_t *src, uint8_t val,
                                        int32_t src_stride, int32_t height)
{
    int32_t cnt;
    v16u8 val0;

    val0 = (v16u8) __msa_fill_b(val);

    for (cnt = (height >> 3); cnt--;) {
        ST_UB8(val0, val0, val0, val0, val0, val0, val0, val0, src, src_stride);
        src += (8 * src_stride);
    }
}
