
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int* r; } ;
typedef TYPE_1__ GXFogAdjTbl ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;

void GX_SetFogRangeAdj(u8 enable,u16 center,GXFogAdjTbl *table)
{
 u32 val;

 if(enable) {
  val = 0xe9000000|(_SHIFTL(table->r[1],12,12))|(table->r[0]&0x0fff);
  GX_LOAD_BP_REG(val);

  val = 0xea000000|(_SHIFTL(table->r[3],12,12))|(table->r[2]&0x0fff);
  GX_LOAD_BP_REG(val);

  val = 0xeb000000|(_SHIFTL(table->r[5],12,12))|(table->r[4]&0x0fff);
  GX_LOAD_BP_REG(val);

  val = 0xec000000|(_SHIFTL(table->r[7],12,12))|(table->r[6]&0x0fff);
  GX_LOAD_BP_REG(val);

  val = 0xed000000|(_SHIFTL(table->r[9],12,12))|(table->r[8]&0x0fff);
  GX_LOAD_BP_REG(val);
 }
 val = 0xe8000000|(_SHIFTL(enable,10,1))|((center + 342)&0x03ff);
 GX_LOAD_BP_REG(val);
}
