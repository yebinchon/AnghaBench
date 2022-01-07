
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
typedef float f32 ;
struct TYPE_3__ {int* r; } ;
typedef TYPE_1__ GXFogAdjTbl ;


 float sqrtf (float) ;

void GX_InitFogAdjTable(GXFogAdjTbl *table,u16 width,f32 projmtx[4][4])
{
 u32 i,val7;
 f32 val0,val1,val2,val4,val5,val6;

 if(projmtx[3][3]==0.0f) {
  val0 = projmtx[2][3]/(projmtx[2][2] - 1.0f);
  val1 = val0/projmtx[0][0];
 } else {
  val1 = 1.0f/projmtx[0][0];
  val0 = val1*1.7320499f;
 }

 val2 = val0*val0;
 val4 = 2.0f/(f32)width;
 for(i=0;i<10;i++) {
  val5 = (i+1)*32.0f;
  val5 *= val4;
  val5 *= val1;
  val5 *= val5;
  val5 /= val2;
  val6 = sqrtf(val5 + 1.0f);
  val7 = (u32)(val6*256.0f);
  table->r[i] = (val7&0x0fff);
 }
}
