
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int f32 ;
typedef int** Mtx ;



void c_guMtxApplyTrans(Mtx src,Mtx dst,f32 xT,f32 yT,f32 zT)
{
 if ( src != dst )
 {
  dst[0][0] = src[0][0]; dst[0][1] = src[0][1]; dst[0][2] = src[0][2];
  dst[1][0] = src[1][0]; dst[1][1] = src[1][1]; dst[1][2] = src[1][2];
  dst[2][0] = src[2][0]; dst[2][1] = src[2][1]; dst[2][2] = src[2][2];
 }

 dst[0][3] = src[0][0]*xT + src[0][1]*yT + src[0][2]*zT + src[0][3];
 dst[1][3] = src[1][0]*xT + src[1][1]*yT + src[1][2]*zT + src[1][3];
 dst[2][3] = src[2][0]*xT + src[2][1]*yT + src[2][2]*zT + src[2][3];
}
