
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _SHIFTL (int,int,int) ;
 int* _cpReg ;

void GX_ReadXfRasMetric(u32 *xfwaitin,u32 *xfwaitout,u32 *rasbusy,u32 *clks)
{
 *rasbusy = _SHIFTL(_cpReg[33],16,16)|(_cpReg[32]&0xffff);
 *clks = _SHIFTL(_cpReg[35],16,16)|(_cpReg[34]&0xffff);
 *xfwaitin = _SHIFTL(_cpReg[37],16,16)|(_cpReg[36]&0xffff);
 *xfwaitout = _SHIFTL(_cpReg[39],16,16)|(_cpReg[38]&0xffff);
}
