
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cpCLreg; } ;


 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;
 int* _cpReg ;

__attribute__((used)) static __inline__ void __GX_WriteFifoIntReset(u8 inthi,u8 intlo)
{
 __gx->cpCLreg = ((__gx->cpCLreg&~0x03)|(_SHIFTL(intlo,1,1))|(inthi&1));
 _cpReg[2] = __gx->cpCLreg;
}
