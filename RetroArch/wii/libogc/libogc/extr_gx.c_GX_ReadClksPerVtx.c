
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GX_DrawDone () ;
 int* _cpReg ;

u32 GX_ReadClksPerVtx()
{
 GX_DrawDone();
 _cpReg[49] = 0x1007;
 _cpReg[48] = 0x1007;
 return (_cpReg[50]<<8);
}
