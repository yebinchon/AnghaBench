
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GPU_LOGICOP ;


 int GPUCMD_AddMaskedWrite (int ,int,int) ;
 int GPUCMD_AddWrite (int ,int ) ;
 int GPUREG_COLOR_OPERATION ;
 int GPUREG_LOGIC_OP ;

void GPU_SetColorLogicOp(GPU_LOGICOP op)
{
 GPUCMD_AddWrite(GPUREG_LOGIC_OP, op);
 GPUCMD_AddMaskedWrite(GPUREG_COLOR_OPERATION, 0x2, 0x00000000);
}
