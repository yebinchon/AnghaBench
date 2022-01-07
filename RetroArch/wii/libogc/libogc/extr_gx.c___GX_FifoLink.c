
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cpCRreg; } ;


 int _SHIFTL (int ,int,int) ;
 TYPE_1__* __gx ;
 int* _cpReg ;

__attribute__((used)) static __inline__ void __GX_FifoLink(u8 enable)
{
 __gx->cpCRreg = ((__gx->cpCRreg&~0x10)|(_SHIFTL(enable,4,1)));
 _cpReg[1] = __gx->cpCRreg;
}
