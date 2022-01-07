
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ABSDIFF (int,int) ;
 int UMASK ;
 int VMASK ;
 int YMASK ;

__attribute__((used)) static uint32_t pixel_diff(uint32_t x, uint32_t y, const uint32_t *r2y)
{





    uint32_t yuv1 = r2y[x & 0xffffff];
    uint32_t yuv2 = r2y[y & 0xffffff];

    return ((abs((int)(yuv1 & 0xff0000)-(int)(yuv2 & 0xff0000))) >> 16) +
           ((abs((int)(yuv1 & 0x00ff00)-(int)(yuv2 & 0x00ff00))) >> 8) +
            (abs((int)(yuv1 & 0x0000ff)-(int)(yuv2 & 0x0000ff)));
}
