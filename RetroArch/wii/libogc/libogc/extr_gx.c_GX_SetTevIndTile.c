
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s32 ;
typedef float f64 ;
typedef float f32 ;


 int GX_FALSE ;
 int GX_ITW_128 ;
 int GX_ITW_16 ;
 int GX_ITW_256 ;
 int GX_ITW_32 ;
 int GX_ITW_64 ;
 int GX_ITW_OFF ;
 int GX_SetIndTexMatrix (int ,float**,int) ;
 int GX_SetTevIndirect (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int GX_TRUE ;

void GX_SetTevIndTile(u8 tevstage,u8 indtexid,u16 tilesize_x,u16 tilesize_y,u16 tilespacing_x,u16 tilespacing_y,u8 indtexfmt,u8 indtexmtx,u8 bias_sel,u8 alpha_sel)
{
 s32 wrap_s,wrap_t;
 f32 offset_mtx[2][3];
 f64 fdspace_x,fdspace_y;
 u32 fbuf_x[2] = { 0x43300000,tilespacing_x };
 u32 fbuf_y[2] = { 0x43300000,tilespacing_y };

 wrap_s = GX_ITW_OFF;
 if(tilesize_x==0x0010) wrap_s = GX_ITW_16;
 else if(tilesize_x==0x0020) wrap_s = GX_ITW_32;
 else if(tilesize_x==0x0040) wrap_s = GX_ITW_64;
 else if(tilesize_x==0x0080) wrap_s = GX_ITW_128;
 else if(tilesize_x==0x0100) wrap_s = GX_ITW_256;

 wrap_t = GX_ITW_OFF;
 if(tilesize_y==0x0010) wrap_t = GX_ITW_16;
 else if(tilesize_y==0x0020) wrap_t = GX_ITW_32;
 else if(tilesize_y==0x0040) wrap_t = GX_ITW_64;
 else if(tilesize_y==0x0080) wrap_t = GX_ITW_128;
 else if(tilesize_y==0x0100) wrap_t = GX_ITW_256;

 fdspace_x = *(f64*)((void*)fbuf_x);
 fdspace_y = *(f64*)((void*)fbuf_y);

 offset_mtx[0][0] = (f32)((fdspace_x - 4503599627370496.0F)*0.00097656250F);
 offset_mtx[0][1] = 0.0F;
 offset_mtx[0][2] = 0.0F;
 offset_mtx[1][0] = 0.0F;
 offset_mtx[1][1] = (f32)((fdspace_y - 4503599627370496.0F)*0.00097656250F);
 offset_mtx[1][2] = 0.0F;

 GX_SetIndTexMatrix(indtexmtx,offset_mtx,10);
 GX_SetTevIndirect(tevstage,indtexid,indtexfmt,bias_sel,indtexmtx,wrap_s,wrap_t,GX_FALSE,GX_TRUE,alpha_sel);
}
