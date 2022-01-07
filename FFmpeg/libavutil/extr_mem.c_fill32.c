
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int AV_RN32 (int *) ;
 int AV_WN32 (int *,int) ;
 int AV_WN64 (int *,int) ;

__attribute__((used)) static void fill32(uint8_t *dst, int len)
{
    uint32_t v = AV_RN32(dst - 4);
    while (len >= 4) {
        AV_WN32(dst, v);
        dst += 4;
        len -= 4;
    }

    while (len--) {
        *dst = dst[-4];
        dst++;
    }
}
