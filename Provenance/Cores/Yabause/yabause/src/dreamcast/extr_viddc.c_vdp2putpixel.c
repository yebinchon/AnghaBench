
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int u16 ;
typedef int s32 ;


 int * vdp2_fb ;
 scalar_t__** vdp2_prio ;

__attribute__((used)) static inline void vdp2putpixel(s32 x, s32 y, u16 color, int priority) {
    vdp2_fb[(y * 512) + x] = color;
    vdp2_prio[x][y] = (uint8) priority;
}
