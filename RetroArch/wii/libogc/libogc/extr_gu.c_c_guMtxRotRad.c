
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int f32 ;
typedef int Mtx ;


 int c_guMtxRotTrig (int ,char const,int ,int ) ;
 int cosf (int ) ;
 int sinf (int ) ;

void c_guMtxRotRad(Mtx mt,const char axis,f32 rad)
{
 f32 sinA,cosA;

 sinA = sinf(rad);
 cosA = cosf(rad);

 c_guMtxRotTrig(mt,axis,sinA,cosA);
}
