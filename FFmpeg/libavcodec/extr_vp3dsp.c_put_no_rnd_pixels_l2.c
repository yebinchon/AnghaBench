
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int AV_RN32 (int const*) ;
 int AV_WN32A (int *,int ) ;
 int no_rnd_avg32 (int ,int ) ;

__attribute__((used)) static void put_no_rnd_pixels_l2(uint8_t *dst, const uint8_t *src1,
                                 const uint8_t *src2, ptrdiff_t stride, int h)
{
    int i;

    for (i = 0; i < h; i++) {
        uint32_t a, b;

        a = AV_RN32(&src1[i * stride]);
        b = AV_RN32(&src2[i * stride]);
        AV_WN32A(&dst[i * stride], no_rnd_avg32(a, b));
        a = AV_RN32(&src1[i * stride + 4]);
        b = AV_RN32(&src2[i * stride + 4]);
        AV_WN32A(&dst[i * stride + 4], no_rnd_avg32(a, b));
    }
}
