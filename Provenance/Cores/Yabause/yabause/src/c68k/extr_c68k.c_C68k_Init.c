
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int Status; int Reset_CallBack; int * Interrupt_CallBack; } ;
typedef TYPE_1__ c68k_struc ;
typedef int C68K_INT_CALLBACK ;


 int C68K_DISABLE ;
 int C68k_Exec (TYPE_1__*,int ) ;
 int * C68k_Interrupt_Ack_Dummy ;
 int C68k_Read_Dummy ;
 int C68k_Reset_Dummy ;
 int C68k_Set_ReadB (TYPE_1__*,int ) ;
 int C68k_Set_ReadW (TYPE_1__*,int ) ;
 int C68k_Set_WriteB (TYPE_1__*,int ) ;
 int C68k_Set_WriteW (TYPE_1__*,int ) ;
 int C68k_Write_Dummy ;
 int memset (TYPE_1__*,int ,int) ;

void C68k_Init(c68k_struc *cpu, C68K_INT_CALLBACK *int_cb)
{
    memset(cpu, 0, sizeof(c68k_struc));

    C68k_Set_ReadB(cpu, C68k_Read_Dummy);
    C68k_Set_ReadW(cpu, C68k_Read_Dummy);

    C68k_Set_WriteB(cpu, C68k_Write_Dummy);
    C68k_Set_WriteW(cpu, C68k_Write_Dummy);

    if (int_cb) cpu->Interrupt_CallBack = int_cb;
    else cpu->Interrupt_CallBack = C68k_Interrupt_Ack_Dummy;
    cpu->Reset_CallBack = C68k_Reset_Dummy;


    cpu->Status |= C68K_DISABLE;
    C68k_Exec(cpu, 0);

    cpu->Status &= ~C68K_DISABLE;
}
