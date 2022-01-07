
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int OpcodePub; } ;
typedef TYPE_1__ MCInst ;



unsigned MCInst_getOpcodePub(const MCInst *inst)
{
 return inst->OpcodePub;
}
