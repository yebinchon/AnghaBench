
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float f32 ;
typedef float** Mtx ;



void c_guMtxTrans(Mtx mt,f32 xT,f32 yT,f32 zT)
{
    mt[0][0] = 1.0f; mt[0][1] = 0.0f; mt[0][2] = 0.0f; mt[0][3] = xT;
    mt[1][0] = 0.0f; mt[1][1] = 1.0f; mt[1][2] = 0.0f; mt[1][3] = yT;
    mt[2][0] = 0.0f; mt[2][1] = 0.0f; mt[2][2] = 1.0f; mt[2][3] = zT;
}
