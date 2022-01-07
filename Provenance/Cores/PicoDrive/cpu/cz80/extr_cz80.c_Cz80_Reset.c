
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int BasePC; } ;
typedef TYPE_1__ cz80_struc ;
typedef scalar_t__ FPTR ;


 int CZ80_PC ;
 int Cz80_Set_Reg (TYPE_1__*,int ,int ) ;
 int memset (TYPE_1__*,int ,scalar_t__) ;

void Cz80_Reset(cz80_struc *CPU)
{
 memset(CPU, 0, (FPTR)&CPU->BasePC - (FPTR)CPU);
 Cz80_Set_Reg(CPU, CZ80_PC, 0);
}
