
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct __gx_litobj {int col; } ;
struct TYPE_3__ {int a; int b; int g; int r; } ;
typedef int GXLightObj ;
typedef TYPE_1__ GXColor ;


 int _SHIFTL (int ,int,int) ;

void GX_InitLightColor(GXLightObj *lit_obj,GXColor col)
{
 struct __gx_litobj *lit = (struct __gx_litobj*)lit_obj;
 lit->col = ((_SHIFTL(col.r,24,8))|(_SHIFTL(col.g,16,8))|(_SHIFTL(col.b,8,8))|(col.a&0xff));
}
