
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int __VIDisplayPositionToXY (int ,int ,int *,int *) ;
 int __getCurrentDisplayPosition (int *,int *) ;

__attribute__((used)) static inline void __VIGetCurrentPosition(s32 *px,s32 *py)
{
 s32 xpos,ypos;

 __getCurrentDisplayPosition((u32*)&xpos,(u32*)&ypos);
 __VIDisplayPositionToXY(xpos,ypos,px,py);
}
