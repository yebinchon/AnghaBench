
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpCRreg; } ;


 TYPE_1__* __gx ;
 int* _cpReg ;

__attribute__((used)) static __inline__ void __GX_FifoReadEnable()
{
 __gx->cpCRreg = ((__gx->cpCRreg&~0x01)|1);
 _cpReg[1] = __gx->cpCRreg;
}
