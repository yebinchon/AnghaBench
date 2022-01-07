
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int* suSsize; } ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_EnableTexOffsets(u8 coord,u8 line_enable,u8 point_enable)
{
 u32 reg = (coord&0x7);
 __gx->suSsize[reg] = (__gx->suSsize[reg]&~0x40000)|(_SHIFTL(line_enable,18,1));
 __gx->suSsize[reg] = (__gx->suSsize[reg]&~0x80000)|(_SHIFTL(point_enable,19,1));
 GX_LOAD_BP_REG(__gx->suSsize[reg]);
}
