
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int r; int b; int g; int a; } ;
typedef TYPE_1__ GXColor ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int ,int,int) ;

void GX_SetCopyClear(GXColor color,u32 zvalue)
{
 u32 val;

 val = (_SHIFTL(color.a,8,8))|(color.r&0xff);
 GX_LOAD_BP_REG(0x4f000000|val);

 val = (_SHIFTL(color.g,8,8))|(color.b&0xff);
 GX_LOAD_BP_REG(0x50000000|val);

 val = zvalue&0x00ffffff;
 GX_LOAD_BP_REG(0x51000000|val);
}
