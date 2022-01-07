
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int LW2 (int *,int,int ,int ) ;
 int LW4 (int *,int,int ,int ,int ,int ) ;
 int SW (int ,int *) ;
 int SW4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void copy_width4_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                            int32_t height)
{
    uint32_t tp0, tp1, tp2, tp3, tp4, tp5, tp6, tp7;

    if (8 == height) {
        LW4(src, stride, tp0, tp1, tp2, tp3);
        src += 4 * stride;
        LW4(src, stride, tp4, tp5, tp6, tp7);
        SW4(tp0, tp1, tp2, tp3, dst, stride);
        dst += 4 * stride;
        SW4(tp4, tp5, tp6, tp7, dst, stride);
    } else if (4 == height) {
        LW4(src, stride, tp0, tp1, tp2, tp3);
        SW4(tp0, tp1, tp2, tp3, dst, stride);
    } else if (2 == height) {
        LW2(src, stride, tp0, tp1);
        SW(tp0, dst);
        dst += stride;
        SW(tp1, dst);
    }
}
