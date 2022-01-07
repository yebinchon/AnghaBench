
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float** MtxP ;
typedef float** Mtx ;


 int c_guMtxCopy (float**,float**) ;

void c_guMtxTranspose(Mtx src,Mtx xPose)
{
    Mtx mTmp;
    MtxP m;

    if(src==xPose)
        m = mTmp;
    else
        m = xPose;

    m[0][0] = src[0][0]; m[0][1] = src[1][0]; m[0][2] = src[2][0]; m[0][3] = 0.0f;
    m[1][0] = src[0][1]; m[1][1] = src[1][1]; m[1][2] = src[2][1]; m[1][3] = 0.0f;
    m[2][0] = src[0][2]; m[2][1] = src[1][2]; m[2][2] = src[2][2]; m[2][3] = 0.0f;


    if(m==mTmp)
        c_guMtxCopy(mTmp,xPose);
}
